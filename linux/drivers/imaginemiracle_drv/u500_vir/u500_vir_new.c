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
    u500_net_info *db = netdev_priv(dev);
    char str[6] = {0x12, 0x34, 0xab, 0x66, 0x88, 0xac};
    netif_start_queue(dev);
    dev->flags |= IFF_UP;
    printk(KERN_NOTICE "u500_virt_eth0 is opened!\n");
    memcpy(db->io_t_base, str, sizeof(str));

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

    /*1) ??????ethhdr????????? "???/??????"MAC??????*/
    ethhdr = (struct ethhdr *)skb->data; 
    memcpy(tmp_dev_addr, ethhdr->h_dest, ETH_ALEN);
    memcpy(ethhdr->h_dest, ethhdr->h_source, ETH_ALEN);
    memcpy(ethhdr->h_source, tmp_dev_addr, ETH_ALEN);

    /*2)?????? iphdr?????????"???/??????" IP??????*/
    ih = (struct iphdr *)(skb->data + sizeof(struct ethhdr));
    saddr = &ih->saddr;
    daddr = &ih->daddr;
    tmp = *saddr;
    *saddr = *daddr;
    *daddr = tmp;



    /*3)??????ip_fast_csum()???????????????iphdr?????????????????????*/
    ih->check = 0;               
    ih->check = ip_fast_csum((unsigned char *)ih,ih->ihl);


    /*4)??????????????????*/
    type = skb->data + sizeof(struct ethhdr) + sizeof(struct iphdr);
    *type = 0;      //???????????????ping???0x08,????????????0x00,????????????ping???


    /*5)??????dev_alloc_skb()?????????????????????sk_buff   */
    rx_skb = dev_alloc_skb(skb->len + 2);

    /*6)??????skb_reserve()?????????2??????????????????  */
    skb_reserve(rx_skb, 2);


    /*7)??????memcpy()?????????????????????sk_buff->data???????????????sk_buff???*/
    memcpy(skb_put(rx_skb, skb->len), skb->data, skb->len); // skb_put():???????????????sk_buff??????????????????????????????????????????
    writesb(db->io_r_base, skb->data, skb->len);
    printk(KERN_INFO "[Kernel u500virnet]DMA_RBuffer: %s\n", db->io_r_base);

    /*8)????????????sk_buff ????????????*/
    rx_skb->dev = dev;
    rx_skb->ip_summed = CHECKSUM_UNNECESSARY; /* don't check it */


    /*9)??????eth_type_trans()????????????????????? */ 
    rx_skb->protocol = eth_type_trans(rx_skb, dev);


    /*10) ????????????????????????,?????????netif_rx( )??? ??????sk_fuffer?????? */
    dev->stats.rx_packets++;                     
    dev->stats.rx_bytes += skb->len;
    //dev->last_rx= jiffies;                       //???????????????

    netif_rx(rx_skb);

}

static int u500_start_xmit(struct sk_buff *skb, struct net_device *dev)
{
    u500_net_info *db = netdev_priv(dev);
    printk(KERN_INFO "[Kernel u500virnet]Socket data:%s\n", skb->data);
    //skb_tx_timestamp(skb);
    printk(KERN_INFO "[Kernel u500virnet]Socket data:%s\n", skb->data);
    memcpy(db->io_t_base, skb->data, skb->len);
    printk(KERN_INFO "[Kernel u500virnet]DMA_RBuffer: %s\n", db->io_t_base);
    netif_stop_queue(dev);

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
    //.ndo_stop       = u500_net_stop,
    .ndo_start_xmit = u500_start_xmit,
    //.ndo_tx_timeout = u500_timeout,
    //.ndo_set_multicast_list = u500_hash_table,
    //.ndo_do_ioctl   = u500_ioctl,
    //.ndo_change_mtu = eth_change_mtu,
    //.ndo_set_features = u500_set_features,
    //.ndo_validate_addr = eth_validate_addr,
    .ndo_set_mac_address = eth_mac_addr,
};

static void u500_net_mac_set(struct net_device *netdev)
{
    u8 mac_addr[6] = {0xab, 0x12, 0xcd, 0x34, 0xef, 0x56};
    memcpy(netdev->dev_addr, mac_addr, sizeof(mac_addr));
}

/*??????????????????*/ 
/*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
static void u500_release_board(void)
{
    return ;
}
/*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

static void u500_virnet_setup(struct net_device *dev)
{
    dev->mtu        = 64 * 1024;        /*???????????????????????????????????????*/                                                                            
    dev->hard_header_len    = ETH_HLEN; /* 14   */ /*?????????????????? 14*/
    dev->min_header_len = ETH_HLEN; /* 14   */
    dev->addr_len       = ETH_ALEN; /* 6    */ /*???????????????????????? 6*/

    dev->flags |= IFF_NOARP | IFF_RUNNING | IFF_UP;
    dev->features |= NETIF_F_IP_CSUM;
    netif_keep_dst(dev);    /*include/linux/netdevice.h +4390*/
    dev->netdev_ops  = &u500_netdev_ops;
    dev->header_ops  = &eth_header_ops;
    dev->ethtool_ops = &u500_virnet_ops;
    return ;
}

static int __init u500_net_probe(void)
{
    int ret = 0;
    struct u500_vir_info *db;   /*?????????????????????*/
    const unsigned char *mac_src;
    int iosize;
    int i = 0;


    netdev = alloc_netdev(sizeof(struct u500_vir_info), "u500_eth0", NET_NAME_UNKNOWN, u500_virnet_setup);
    if (!netdev) {
        printk(KERN_INFO "Could not allocate device.\n");
        return -ENOMEM;
    }
    db = netdev_priv(netdev);

    db->io_t_base = ioremap(DMA_TRANSMIT_LIST_START, DMA_BUFFER_SIZE);
    if (NULL == db->io_t_base) {
        goto error1;
    }

    db->io_r_base = ioremap(DMA_RECEIVE_LIST_START, DMA_BUFFER_SIZE);
    if (NULL == db->io_r_base) {
        goto error2;
    }

    db->irq = 16;

    u500_net_mac_set(netdev);


    
    ret = register_netdev(netdev);
    if (0 == ret) {
        printk(KERN_INFO "Register %s ok!\n", "u500_eth0");
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

static void __exit u500_net_remove(void)
{

    unregister_netdev(netdev);
    //u500_release_board(...);      //????????????????????????????????????

    free_netdev(netdev);
    return ;
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
/*
static struct platform_driver u500_net_driver = {
    .probe   = u500_net_probe,
    .remove  = u500_net_remove,
    .driver = {
        .name  = DEVICENAME,
        .owner = THIS_MODULE,
    },
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
*/
module_init(u500_net_probe);
module_exit(u500_net_remove);
