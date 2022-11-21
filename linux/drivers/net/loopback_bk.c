/*
 * INET		An implementation of the TCP/IP protocol suite for the LINUX
 *		operating system.  INET is implemented using the  BSD Socket
 *		interface as the means of communication with the user level.
 *
 *		Pseudo-driver for the loopback interface.
 *
 * Version:	@(#)loopback.c	1.0.4b	08/16/93
 *
 * Authors:	Ross Biro
 *		Fred N. van Kempen, <waltje@uWalt.NL.Mugnet.ORG>
 *		Donald Becker, <becker@scyld.com>
 *
 *		Alan Cox	:	Fixed oddments for NET3.014
 *		Alan Cox	:	Rejig for NET3.029 snap #3
 *		Alan Cox	:	Fixed NET3.029 bugs and sped up
 *		Larry McVoy	:	Tiny tweak to double performance
 *		Alan Cox	:	Backed out LMV's tweak - the linux mm
 *					can't take it...
 *              Michael Griffith:       Don't bother computing the checksums
 *                                      on packets received on the loopback
 *                                      interface.
 *		Alexey Kuznetsov:	Potential hang under some extreme
 *					cases removed.
 *
 *		This program is free software; you can redistribute it and/or
 *		modify it under the terms of the GNU General Public License
 *		as published by the Free Software Foundation; either version
 *		2 of the License, or (at your option) any later version.
 */
#include <linux/kernel.h>
#include <linux/jiffies.h>
#include <linux/module.h>
#include <linux/interrupt.h>
#include <linux/fs.h>
#include <linux/types.h>
#include <linux/string.h>
#include <linux/socket.h>
#include <linux/errno.h>
#include <linux/fcntl.h>
#include <linux/in.h>

#include <linux/uaccess.h>
#include <linux/io.h>

#include <linux/inet.h>
#include <linux/netdevice.h>
#include <linux/etherdevice.h>
#include <linux/skbuff.h>
#include <linux/ethtool.h>
#include <net/sock.h>
#include <net/checksum.h>
#include <linux/if_ether.h>	/* For the statistics structure. */
#include <linux/if_arp.h>	/* For ARPHRD_ETHER */
#include <linux/ip.h>
#include <linux/tcp.h>
#include <linux/percpu.h>
#include <linux/net_tstamp.h>
#include <net/net_namespace.h>
#include <linux/u64_stats_sync.h>

struct pcpu_lstats {
	u64			packets;
	u64			bytes;
	struct u64_stats_sync	syncp;
};

/* The higher levels take care of making this non-reentrant (it's
 * called with bh's disabled).
 */
static netdev_tx_t loopback_xmit(struct sk_buff *skb,
				 struct net_device *dev)
{
	struct pcpu_lstats *lb_stats;
	int len;

    /*发送时间戳[include/linux/skbuff.h]*/
	skb_tx_timestamp(skb);
    /*如果一个缓冲区当前有一个拥有者，我们就调用拥有者的析构函数，使skb没有拥有者。该缓冲区继续存在，但以前的拥有者不再对其“负责”[include/linux/skbuff.h +2518]*/
	skb_orphan(skb);

	/* Before queueing this packet to netif_rx(),
	 * make sure dst is refcounted.
	 */
	skb_dst_force(skb);


    /*去掉链路层报头，skb->data跳过以太网报头。由mac_header指向以太网报头[net/ethernet/eth.c +156]*/
	skb->protocol = eth_type_trans(skb, dev);

	/* it's OK to use per_cpu_ptr() because BHs are off */
	lb_stats = this_cpu_ptr(dev->lstats);

	len = skb->len;
	if (likely(netif_rx(skb) == NET_RX_SUCCESS)) {
		u64_stats_update_begin(&lb_stats->syncp);
		lb_stats->bytes += len;
		lb_stats->packets++;
		u64_stats_update_end(&lb_stats->syncp);
	}

	return NETDEV_TX_OK;
}

static void loopback_get_stats64(struct net_device *dev,
				 struct rtnl_link_stats64 *stats)
{
	u64 bytes = 0;
	u64 packets = 0;
	int i;

	for_each_possible_cpu(i) {
		const struct pcpu_lstats *lb_stats;
		u64 tbytes, tpackets;
		unsigned int start;

		lb_stats = per_cpu_ptr(dev->lstats, i);
		do {
			start = u64_stats_fetch_begin_irq(&lb_stats->syncp);
			tbytes = lb_stats->bytes;
			tpackets = lb_stats->packets;
		} while (u64_stats_fetch_retry_irq(&lb_stats->syncp, start));
		bytes   += tbytes;
		packets += tpackets;
	}
	stats->rx_packets = packets;
	stats->tx_packets = packets;
	stats->rx_bytes   = bytes;
	stats->tx_bytes   = bytes;
}

static u32 always_on(struct net_device *dev)
{
	return 1;
}

static int loopback_get_ts_info(struct net_device *netdev,
				struct ethtool_ts_info *ts_info)
{
	ts_info->so_timestamping = SOF_TIMESTAMPING_TX_SOFTWARE |
				   SOF_TIMESTAMPING_RX_SOFTWARE |
				   SOF_TIMESTAMPING_SOFTWARE;

	ts_info->phc_index = -1;

	return 0;
};

static const struct ethtool_ops loopback_ethtool_ops = {
	.get_link		= always_on,
	.get_ts_info		= loopback_get_ts_info,
};

static int loopback_dev_init(struct net_device *dev)
{
	dev->lstats = netdev_alloc_pcpu_stats(struct pcpu_lstats); /*inclued/linux/netdevice.h +2368*/
	if (!dev->lstats)
		return -ENOMEM;
	return 0;
}

static void loopback_dev_free(struct net_device *dev)
{
	dev_net(dev)->loopback_dev = NULL;
	free_percpu(dev->lstats);
}

static const struct net_device_ops loopback_ops = {
	.ndo_init        = loopback_dev_init,       /*注册网络设备——虚拟网卡*/
    /* 负责网卡发送数据
     * 1.检查skb_shinfo(skb)->tx_flags，SKBTX_HW_TSTAMP指示硬件向上层软件提供硬件时间戳(调用skb_tstamp_tx_timestamp),
     * 设置过程中置位SKBTX_IN_PROGRESS，表示硬件正在处理上层的时间戳提取要求
     * 2.根据ip_sunned查看是否需要协助计算校验和，需要csum_start和csum_offset
     * 3.是否需要VLAN标签插入，需要vlan_proto和vlan_tcl
     * 4.queue_mapping指示该SKB需要插入到哪个传输队列上
     * 5.根据nr_flags检查是否需要发送碎片包，此时需要初始化nr_flags数量的传输描述符
     * 6.检查skb->encapsulation，确定是否需要使用内层协议头
     * 7.检查skb->shinfo(skb)->gso_size是否需要硬件进行分片操作
     * 8.映射DMA操作需要的地址，填入传输描述符中
     * 9.更新传输描述环相关状态
     * 10.记录该等待传输的SKB到链表中
     * 11.如果传输环空间不够应停上层继续调度，也可以调用BQL机制(netdev_tx_sent_queue)实现自动调度控制
     * 12.检查skb是否为jumbo帧，硬件是否支持直接发送
     * 13.检查skb->no_fcs确定是否硬件需要在帧尾部加上FCS
     */
	.ndo_start_xmit  = loopback_xmit,           
	.ndo_get_stats64 = loopback_get_stats64,
    /*设置网卡的MAC地址，更新dev->dev_addr，并设置相应硬件寄存器;传递参数为struct sockaddr*/
	.ndo_set_mac_address = eth_mac_addr,
};

/* The loopback device is special. There is only one instance
 * per network namespace.
 */
static void loopback_setup(struct net_device *dev)
{
	dev->mtu		= 64 * 1024;        /*网卡能接受的最大数据包大小*/
	dev->hard_header_len	= ETH_HLEN;	/* 14	*/ /*设置头部长度 14*/
	dev->min_header_len	= ETH_HLEN;	/* 14	*/
	dev->addr_len		= ETH_ALEN;	/* 6	*/ /*设置硬件地址长度 6*/
    /*
     * 设备所属类型（在ARP模块中，用type判断接口的硬件地址类型）
     * 以太网: ARPHRD_ETHER
     * 回环网: ARPHRD_LOOPBACK
     */
	dev->type		= ARPHRD_LOOPBACK;	/* 0x0001*/ 
    /*
     * 标识接口特征，IFF_XXX
     */
	dev->flags		= IFF_LOOPBACK;
    /*
     * 用于存储用户空间不可见的标识
     * 有VLAN和Bridge虚拟设备使用
     */
	dev->priv_flags		|= IFF_LIVE_ADDR_CHANGE | IFF_NO_QUEUE;
	netif_keep_dst(dev);    /*include/linux/netdevice.h +4390*/
    /*
     * 设置当存在以下设备功能，可报告适配卡的功能，以便与CPU通信
     * 使用NETIF_F_XXX标识功能特征
     */
	dev->hw_features	= NETIF_F_GSO_SOFTWARE;
	dev->features		= NETIF_F_SG | NETIF_F_FRAGLIST
		| NETIF_F_GSO_SOFTWARE
		| NETIF_F_HW_CSUM
		| NETIF_F_RXCSUM
		| NETIF_F_SCTP_CRC
		| NETIF_F_HIGHDMA
		| NETIF_F_LLTX
		| NETIF_F_NETNS_LOCAL
		| NETIF_F_VLAN_CHALLENGED
		| NETIF_F_LOOPBACK;
	dev->ethtool_ops	= &loopback_ethtool_ops; /*ethtool操作函数*/
	dev->header_ops		= &eth_header_ops;  /*头部的一些操作，如链路层缓存、校验等[net/ethernet/eth.c]*/
	dev->netdev_ops		= &loopback_ops;    /*设置网卡操作函数*/

	dev->needs_free_netdev	= true;
	dev->priv_destructor	= loopback_dev_free; /*私有析构函数*/
}

/* Setup and register the loopback device. */
static __net_init int loopback_net_init(struct net *net)
{
	struct net_device *dev;
	int err;

	err = -ENOMEM;
    //申请网卡设备，私有成员大小:0 设备名:lo 命名类型:无 setup函数指针:loopback_setup(...)
	dev = alloc_netdev(0, "lo", NET_NAME_UNKNOWN, loopback_setup);
	if (!dev)
		goto out;

    //设置该网络设备的命名空间在dev里
	dev_net_set(dev, net);
    //注册网卡设备
	err = register_netdev(dev);
	if (err)
		goto out_free_netdev;

    /*若回环网卡不是第一块网卡，则报错*/
	BUG_ON(dev->ifindex != LOOPBACK_IFINDEX);
	net->loopback_dev = dev; /*设置当前命名空间的回环网卡*/
	return 0;

out_free_netdev:
	free_netdev(dev);
out:
	if (net_eq(net, &init_net))
		panic("loopback: Failed to register netdevice: %d\n", err);
	return err;
}

/* Registered in net/core/dev.c */
struct pernet_operations __net_initdata loopback_net_ops = {
	.init = loopback_net_init,
};