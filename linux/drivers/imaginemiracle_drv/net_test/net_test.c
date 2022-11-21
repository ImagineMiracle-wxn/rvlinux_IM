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



MODULE_LICENSE("GPL");
MODULE_AUTHOR("Imagine Miracle");
MODULE_VERSION("Net Test v0.1");
MODULE_DESCRIPTION("This is a net driver for test function!");

unsigned long bytes = 0;   //记录数据量
unsigned long packets = 0; //记录数据包的数量

struct net_device *dev;    //定义一个网卡驱动

static int loopback_xmit(struct sk_buff *skb, struct net_device *dev)
{
    skb->protocol = eth_type_trans(skb, dev); //标明数据包的协议--以太网协议

    bytes += skb->len; //发送包的长度
    packets++;         //包的数目

    netif_rx(skb);

    return 0;
}

static struct net_device_stats *loopback_get_stats(struct net_device *dev)
{
    struct net_device_stats *stats = &dev->stats;

    stats->rx_packets = packets;
    stats->tx_packets = packets;
    stats->rx_bytes = bytes;
    stats->tx_bytes = bytes;

    return stats;
}

static const struct net_device_ops loopback_ops = {
    .ndo_start_xmit = loopback_xmit,
    .ndo_get_stats = loopback_get_stats,   //获取网卡状态信息
};

static void loopback_setup(struct net_device *dev)
{
    dev->mtu        = (16 * 1024) + 20 + 20 + 12; //网卡能接受的最大数据包大小 tcp头:20 以太网头:20 ip头:12
    dev->flags      = IFF_LOOPBACK;     //回环网卡标志位
    dev->header_ops = &eth_header_ops;  //数据头的构造函数（以太网构造函数）直接使用内核自带的函数 内核自动调用该函数
    dev->netdev_ops = &loopback_ops;    //网卡操作函数集 
}

static __net_init int Imagine_init(struct net *net)
{
    int err = -ENOMEM;
    dev = alloc_netdev(0, "lo-IM", NET_NAME_UNKNOWN, loopback_setup);

    if (!dev) {
        goto error0;
    }

    err = register_netdev(dev);
    if (err) {
        goto error1;
    }

    net->loopback_dev = dev; //将分配好的dev告诉网络(回环网卡特有)

    return 0;

error1:
    free_netdev(dev);

error0:
    if (net == &init_net) {
        panic("loopback: Failed to register netdevice: %d\n", err);
    }
    return err;
}


static __net_exit void Imagine_exit(struct net *net)
{
    struct net_device *dev = net->loopback_dev;

    unregister_netdev(dev);

    return ;
}


//使用网络驱动框架宏
struct pernet_operations __net_initdata loopback_net_ops = {
    .init = Imagine_init,
    .exit = Imagine_exit,
};


/*
module_init(Imagine_init);
module_exit(Imagine_exit);
*/
