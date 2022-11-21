#include <linux/kernel.h>
#include <linux/jiffies.h>
#include <linux/module.h>
#include <linux/interrupt.h>
#include <linux/ioport.h>
#include <linux/fs.h>
#include <linux/types.h>
#include <linux/string.h>
#include <linux/socket.h>
#include <linux/errno.h>
#include <linux/fcntl.h>
#include <linux/in.h>
#include <linux/platform_device.h>
#include <linux/bitops.h>
#include <linux/spinlock.h>

#include <asm/io.h>
#include <asm/irq.h>

#include <linux/uaccess.h>
#include <linux/io.h>
#include <linux/init.h>
#include <linux/irq.h> 
#include <linux/slab.h>

#include <linux/inet.h>
#include <linux/netdevice.h>
#include <linux/etherdevice.h>
#include <linux/skbuff.h>
#include <linux/ethtool.h>
#include <net/sock.h>
#include <net/checksum.h>
#include <linux/if_ether.h>
#include <linux/if_arp.h>
#include <linux/ip.h>
#include <linux/tcp.h>
#include <linux/percpu.h>
#include <linux/net_tstamp.h>
#include <net/net_namespace.h>
#include <linux/u64_stats_sync.h>

MODULE_LICENSE("Dual BSD/GPL");
MODULE_AUTHOR("Imagine Miracle");
MODULE_VERSION("U500NET_V_IM-v0.1");
MODULE_DESCRIPTION("This is a U500 virtual net module!");

#define DEVICENAME "U500NET_Vir"
#define DRV_VERSION "v0.1"
#define DMA_TRANSMIT_LIST_START   (0x40000000)
#define DMA_RECEIVE_LIST_START    (0x50000000)
#define DMA_BUFFER_SIZE 2048

typedef struct u500_vir_info {
    unsigned int *io_t_base;
    unsigned int *io_r_base;
    u16 irq;

    u64 packets;
    u64 bytes;

    struct device *dev;     /*parent device*/
    struct net_device *ndev;

} u500_net_info;
    struct net_device *netdev;

static inline u500_net_info *to_u500_virnet_info(struct net_device *ndev)
{
    return netdev_priv(ndev);
}

static void u500_get_drvinfo(struct net_device *dev, struct ethtool_drvinfo *info)
{
    strcpy(info->driver, DEVICENAME);
    strcpy(info->version, DRV_VERSION);
}

static u32 u500_get_link(struct net_device *dev)
{
    u32 always_on = 1;

    return always_on;
}

static const struct ethtool_ops u500_virnet_ops = {
    .get_drvinfo    = u500_get_drvinfo,
    .get_link       = u500_get_link,
};

static int u500_net_open(struct net_device *dev)
{
    netif_start_queue(dev);
    return 0;
}

static int u500_net_stop(struct net_device *ndev)
{
    netif_stop_queue(ndev);

    return 0;
}

static void u500_virnet_rx(struct sk_buff *skb, struct net_device *dev)
{
    u500_net_info *db = netdev_priv(dev);
    unsigned char *type;
    struct iphdr *ih;
    __be32 *saddr, *daddr, tmp;
    unsigned char tmp_dev_addr[ETH_ALEN];
    struct ethhdr *ethhdr;
    struct sk_buff *rx_skb;

    /*1) 对调ethhdr结构体 "源/目的"MAC地址*/
    ethhdr = (struct ethhdr *)skb->data; 
    memcpy(tmp_dev_addr, ethhdr->h_dest, ETH_ALEN);
    memcpy(ethhdr->h_dest, ethhdr->h_source, ETH_ALEN);
    memcpy(ethhdr->h_source, tmp_dev_addr, ETH_ALEN);

    /*2)对调 iphdr结构体"源/目的" IP地址*/
    ih = (struct iphdr *)(skb->data + sizeof(struct ethhdr));
    saddr = &ih->saddr;
    daddr = &ih->daddr;
    tmp = *saddr;
    *saddr = *daddr;
    *daddr = tmp;



    /*3)使用ip_fast_csum()来重新获取iphdr结构体的校验码*/
    ih->check = 0;               
    ih->check = ip_fast_csum((unsigned char *)ih,ih->ihl);


    /*4)设置数据类型*/
    type = skb->data + sizeof(struct ethhdr) + sizeof(struct iphdr);
    *type = 0;      //之前是发送ping包0x08,需要改为0x00,表示接收ping包


    /*5)使用dev_alloc_skb()来构造一个新的sk_buff   */
    rx_skb = dev_alloc_skb(skb->len + 2);

    /*6)使用skb_reserve()来腾出2字节头部空间  */
    skb_reserve(rx_skb, 2);


    /*7)使用memcpy()将之前修改好的sk_buff->data复制到新的sk_buff里*/
    memcpy(skb_put(rx_skb, skb->len), skb->data, skb->len); // skb_put():来动态扩大sk_buff结构体里中的数据区，避免溢出
    writesb(db->io_r_base, skb->data, skb->len);
    printk(KERN_INFO "[Kernel u500virnet]DMA_RBuffer: %s\n", db->io_r_base);

    /*8)设置新的sk_buff 其它成员*/
    rx_skb->dev = dev;
    rx_skb->ip_summed = CHECKSUM_UNNECESSARY; /* don't check it */


    /*9)使用eth_type_trans()来获取上层协议 */ 
    rx_skb->protocol = eth_type_trans(rx_skb, dev);


    /*10) 更新接收统计信息,并使用netif_rx( )来 传递sk_fuffer收包 */
    dev->stats.rx_packets++;                     
    dev->stats.rx_bytes += skb->len;
    //dev->last_rx= jiffies;                       //收包时间戳

    netif_rx(rx_skb);

}

static int u500_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
    u500_net_info *db = netdev_priv(dev);
    netif_stop_queue(dev);
    skb_tx_timestamp(skb);
    printk(KERN_INFO "[Kernel u500virnet]Socket data:%s\n", skb->data);
    writesb(db->io_t_base, skb->data, skb->len);
    printk(KERN_INFO "[Kernel u500virnet]DMA_RBuffer: %s\n", db->io_t_base);

    u500_virnet_rx(skb, dev);

    dev->stats.tx_packets++;
    dev->stats.tx_bytes += skb->len;
    //dev->trans_start = jiffies;

    dev_kfree_skb(skb);

    netif_wake_queue(dev);

    return NETDEV_TX_OK;
}



static const struct net_device_ops u500_netdev_ops = {
    .ndo_open       = u500_net_open,
    .ndo_stop       = u500_net_stop,
    .ndo_start_xmit = u500_start_xmit,
    //.ndo_tx_timeout = u500_timeout,
    //.ndo_set_multicast_list = u500_hash_table,
    //.ndo_do_ioctl   = u500_ioctl,
    .ndo_change_mtu = eth_change_mtu,
    //.ndo_set_features = u500_set_features,
    .ndo_validate_addr = eth_validate_addr,
    .ndo_set_mac_address = eth_mac_addr,
};

static void u500_net_mac_set(struct net_device *netdev)
{
    u8 mac_addr[6] = {0xab, 0x12, 0xcd, 0x34, 0xef, 0x56};
    memcpy(netdev->dev_addr, mac_addr, sizeof(mac_addr));
}

/*释放物理地址*/ 
/*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
static void u500_release_board(void)
{
    return ;
}
/*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/



static int u500_net_probe(struct platform_device *pdev)
{
    int ret = 0;
    struct u500_vir_info *db;   /*通信结构体指针*/
    const unsigned char *mac_src;
    int iosize;
    int i = 0;


    printk(KERN_INFO "Register %s\n", "u500_virt_eth1");
    netdev = alloc_netdev(sizeof(struct net_device), "u500_virt_eth1", NET_NAME_UNKNOWN, ether_setup);
    if (!netdev) {
        printk(KERN_INFO "Could not allocate device.\n");
        return -ENOMEM;
    }
    SET_NETDEV_DEV(netdev, &pdev->dev);

    db = netdev_priv(netdev);
    db->dev = &pdev->dev;
    db->ndev = netdev;

    db->io_t_base = ioremap(DMA_TRANSMIT_LIST_START, DMA_BUFFER_SIZE);
    if (NULL == db->io_t_base) {
        goto error1;
    }

    db->io_r_base = ioremap(DMA_RECEIVE_LIST_START, DMA_BUFFER_SIZE);
    if (NULL == db->io_r_base) {
        goto error2;
    }

    u500_net_mac_set(netdev);


    netdev->type = ARPHRD_ETHER;
    netdev->flags |= IFF_NOARP;
    /*netdev->features |= NETIF_F_HW_CSUM | NETIF_F_RXCSUM
        | NETIF_F_SCTP_CRC
        | NETIF_F_LLTX
        | NETIF_F_HIGHDMA;*/
    netdev->netdev_ops = &u500_netdev_ops;
    netdev->ethtool_ops = &u500_virnet_ops;


    platform_set_drvdata(pdev, netdev);
    
    printk(KERN_INFO "Register %s\n", "u500_virt_eth1");
    ret = register_netdev(netdev);
    if (0 == ret) {
        printk(KERN_INFO "%s: u500_virnet at dma_t:%p dma_r:%p, MAC: %p\n", netdev->name, db->io_t_base, db->io_r_base, netdev->dev_addr);
    }

    return ret;

error1:
    free_netdev(netdev);
    printk(KERN_INFO "Failed to ioremap address reg[0x%x]\n", DMA_TRANSMIT_LIST_START);
    return -EINVAL;

error2:
    free_netdev(netdev);
    printk(KERN_INFO "Failed to ioremap address reg[0x%x]\n", DMA_RECEIVE_LIST_START);
    return -EINVAL;
}

static int u500_net_remove(struct platform_device *pdev)
{
    struct net_device *ndev = platform_get_drvdata(pdev);

    platform_set_drvdata(pdev, NULL);

    unregister_netdev(ndev);
    //u500_release_board(...);      //释放物理地址以及数据地址

    free_netdev(ndev);
    return 0;
}

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

static int u500_virnet_suspend(struct platform_device *dev, pm_message_t state)
{
    return 0;
}

static int u500_virnet_resume(struct platform_device *dev)
{
    return 0;
}
/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

static struct platform_driver u500_net_driver = {
    .driver = {
        .name  = DEVICENAME,
        .owner = THIS_MODULE,
    },
    .probe   = u500_net_probe,
    .remove  = u500_net_remove,
    .suspend = u500_virnet_suspend,
    .resume  = u500_virnet_resume,
};

static int __init u500_net_init(void)
{
    printk(KERN_INFO "%s Ethernet Driver\n", DEVICENAME);

    return platform_driver_register(&u500_net_driver);
}

static void __exit u500_net_cleanup(void)
{
    platform_driver_unregister(&u500_net_driver);
}

module_init(u500_net_init);
module_exit(u500_net_cleanup);
