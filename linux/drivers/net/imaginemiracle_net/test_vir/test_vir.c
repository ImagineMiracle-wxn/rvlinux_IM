#include <linux/module.h>
#include <linux/errno.h>
#include <linux/netdevice.h>
#include <linux/etherdevice.h>
#include <linux/kernel.h>
#include <linux/types.h>
#include <linux/fcntl.h>
#include <linux/interrupt.h>
#include <linux/ioport.h>
#include <linux/in.h>
#include <linux/skbuff.h>
#include <linux/slab.h>
#include <linux/spinlock.h>
#include <linux/string.h>
#include <linux/init.h>
#include <linux/bitops.h>
#include <linux/delay.h>
#include <linux/ip.h> 

#include <asm/system.h>
#include <asm/io.h>
#include <asm/irq.h>


static struct net_device    *virt_net;


static void virt_rs_packet(struct sk_buff *skb, struct net_device *dev)
{
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

    /*8)设置新的sk_buff 其它成员*/
    rx_skb->dev = dev;
    rx_skb->ip_summed = CHECKSUM_UNNECESSARY; /* don't check it */


    /*9)使用eth_type_trans()来获取上层协议 */
    rx_skb->protocol = eth_type_trans(rx_skb, dev);

 
    /*10) 更新接收统计信息,并使用netif_rx( )来 传递sk_fuffer收包 */
       dev->stats.rx_packets++;                     
       dev->stats.rx_bytes += skb->len;
       dev->last_rx= jiffies;                       //收包时间戳

       netif_rx(rx_skb);

}

static int virt_send_packet(struct sk_buff *skb, struct net_device *dev)
{
  /*1)使用netif_stop_queue()来阻止上层向网络设备驱动层发送数据包*/
    netif_stop_queue(dev);
 
   //期间设置硬件发送数据包

  /*2)调用收包函数,里面来伪造一个收的ping包函数*/
    virt_rs_packet(skb,dev);
 
 /*3)使用dev_kfree_skb()函数来释放发送的sk_buff缓存区*/
     dev_kfree_skb(skb);

 /*4)更新发送的统计信息*/
    dev->stats.tx_packets++;            //成功发送一个包
    dev->stats.tx_bytes+=skb->len;  //成功发送len长字节
    dev->trans_start = jiffies;            //发送时间戳

 /*5)使用netif_wake_queue()来唤醒被阻塞的上层*/
    netif_wake_queue(dev); 

    return 0;
}

 
static int virt_net_init(void)
{
    /*1)使用alloc_netdev()来分配一个net_device结构体*/
    virt_net= alloc_netdev(sizeof(struct net_device), "virt_eth0", ether_setup);

    /*2)设置net_device结构体的成员 */
    virt_net->hard_start_xmit      = virt_send_packet;

    virt_net->dev_addr[0] = 0x08;　　　　 
    virt_net->dev_addr[1] = 0x89;
    virt_net->dev_addr[2] = 0x89;
    virt_net->dev_addr[3] = 0x89;
    virt_net->dev_addr[4] = 0x89;
    virt_net->dev_addr[5] = 0x89;

    virt_net->flags           |= IFF_NOARP;
    virt_net->features        |= NETIF_F_NO_CSUM;


   /*3)使用register_netdev()来注册net_device结构体 */
    register_netdev(virt_net);
    return 0;
}

static void virt_net_exit(void)
{
    unregister_netdev(virt_net);
    free_netdev(virt_net);   
}

module_init(virt_net_init);
module_exit(virt_net_exit);

MODULE_LICENSE("Dual BSD/GPL");
MODULE_AUTHOR("Imagine Miracle");
