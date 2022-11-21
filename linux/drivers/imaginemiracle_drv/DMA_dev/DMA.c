#include <linux/init.h>
#include <linux/proc_fs.h>
#include <linux/module.h>
#include <linux/fs.h>
#include <linux/cdev.h>
#include <linux/device.h>
#include <linux/uaccess.h>
#include <linux/io.h>
#include <linux/slab.h>
#include <linux/wait.h>
#include <linux/poll.h>
#include <linux/sched.h>
#include <linux/delay.h>
#include <linux/semaphore.h>

#include <linux/dma-mapping.h>

MODULE_LICENSE("Dual BSD/GPL");
MODULE_AUTHOR("Imagine Miracle");
MODULE_VERSION("DMA_IM_v0.1");
MODULE_DESCRIPTION("This is a DMA device module!");

#define DEVICENAME "DMA_Dev_IM-v0.1"

#define DMA_STATUS               (0x3000000000)
#define DMA_TRANSMIT_LIST_START  (0x3000000008)
#define DMA_RECEIVE_LIST_START   (0x3000000010)
#define DMA_TRANSMIT_LIST_START  (0x40000000)
#define DMA_RECEIVE_LIST_START   (0x50000000)
#define DMA_TRANSMIT_POLL_DEMAND (0x3000000018)
#define DMA_RECEIVE_POLL_DEMAND  (0x3000000020)

#define DMA_REG_SIZE 64

#define DMA_BUFFER_SIZE 4096


static int major = 0;
static DEFINE_SEMAPHORE(semlock);


struct dma_dev_t {
    struct cdev cdev;

    uint64_t *reg_status;
    uint64_t *reg_tls;
    uint64_t *reg_rls;

    unsigned int rpn;

    //long long unsigned int tx_buf_phy;
    //long long unsigned int rx_buf_phy;

} *buffer_im;

//static struct proc_dir_entry *proc = NULL;

static int Imagine_open(struct inode *inode, struct file *filp)
{
    filp->private_data = buffer_im;
    return 0;
}

static int Imagine_release(struct inode *inode, struct file *filp)
{
    return 0;
}

static ssize_t Imagine_read(struct file *filp, char __user *buf, size_t size, loff_t *ppos)
{
    unsigned int count = size;

    int ret = 0;
    int i = 0;

    uint64_t data[15] = {0x11111111, 0x22222222, 0x33333333, 0x44444444, 0x55555555,
        0x66666666, 0x77777777, 0x88888888, 0x99999999, 0xaaaaaaaa,
        0xbbbbbbbb, 0xcccccccc, 0xdddddddd, 0xeeeeeeee, 0xffffffff};

    struct dma_dev_t *dev = filp->private_data;

    uint64_t *status = dev->reg_status,
             *txbuf  = dev->reg_tls,
             *rxbuf  = dev->reg_rls;
    uint64_t desc_tx[20] = {
        0x0000000040000020,0x00000000400000a0,0x0000000000000053,0x8000000000000000,
        0x0000000040000040,0x0000000040000100,0x000000000000004f,0x8000000000000000,
        0x0000000040000060,0x0000000040000160,0x0000000000000060,0x8000000000000000,
        0x0000000040000080,0x00000000400001c0,0x0000000000000022,0x8000000000000000,
        0x0000000040000000,0x0000000040000200,0x00000000000000e9,0x8000000000000001};

    //接收描述符 5个
    uint64_t desc_rx[20] = {
        0x0000000050000020,0x00000000500000a0,0x0000000000000000,0x8000000000000000,
        0x0000000050000040,0x00000000500001a0,0x0000000000000000,0x8000000000000000,
        0x0000000050000060,0x00000000500002a0,0x0000000000000000,0x8000000000000000,
        0x0000000050000080,0x00000000500003a0,0x0000000000000000,0x8000000000000000,
        0x0000000050000000,0x00000000500004a0,0x0000000000000000,0x8000000000000001};


    uint64_t tx_data[76] = {
        0x0008af4e00321200,0x010006080b041927,0x06400040fa1a3c00,0xa8c0bc08a8c0518d,
        0x773fbc0c58a36408,0x02a0000000000b03,0x0402000024361072,0xd8000a080204b405,
        0x4d485c5ffc5b8406,0x67cd981b8b8ab36e,0x3692233c79900bd0,0x030100000000f119, //pkt1
        0x00080000005e0001,0x004500080b041927,0x06400040fa1a3c00,0xa8c0bc08a8c0518d,
        0x773fbc0c58a36408,0x02a0000000000b03,0x0402000024361072,0xd8000a080204b405,
        0x07609f0027ae9efa,0x030100000000f119,0x030100000000f119,0xd8000a080204b405, //pkt2
        0x0008ffffffffffff,0x010006080b041927,0x11400040b824bb00,0xa8c06508a8c08283,
        0xa700c5f4a1004208,0x0301029c8130dc5f,0x0003020001020e30,0x030102030104e3ff,
        0x00800d0435303704,0x2130f999e180881f,0x02022701025b27ae,0x696d64410504e202, //pkt3
        0x1200af4e00321200,0x01000608f0ffff32,0x11400040b824bb00,0xa8c06508a8c08283,
        0xa700c5f4a1004208,0x0301029c8130dc5f,0x0003020001020e30,0x030102030104e3ff, //pkt4
        0x0000af4e00321200,0x0100060810111213,0x11400040a408f300,0xa8c06508a8c05e9f,
        0xdf00c5f4a1004208,0x030102d48130f765,0x0003020001020e30,0x030102030104e3ff,
        0x00800d0435303704,0x2130f999e180881f,0x02022701025b27ae,0x696d644105044602,
        0x4e85a82f8b0c046e,0x04f57a6696c72520,0x46ddca961c0d7408,0x119ef11385810471,
        0x5c675ac71d6a4fbf,0xaa9e459dcf398c6f,0xaac8f2ac727f21fa,0x111e5328740baabc,
        0x59bdf48663eb3cf4,0x9baccfe95d9d836c,0x61bd17463a3b1fc7,0x9229902f88e26f27,
        0x07609f0027ae9efa,0x23a45409bb86a3fc,0xd47e2465ca844d69,0x06eea33a0e785db0,
        0x51369bbb1d0e6def,0xa4233e3dc4eb60cb,0xd0e23e5aa819aa14,0x111e5328740baabc}; //pkt5

    printk(KERN_NOTICE "T/RxBuffer Init...\n");
    memset(dev->reg_rls, 0, DMA_BUFFER_SIZE);
    memset(dev->reg_tls, 0, DMA_BUFFER_SIZE);
    memset(dev->reg_status, 0, DMA_REG_SIZE);

    printk(KERN_NOTICE "TxBuffer[0]: 0x%lx\n", *(dev->reg_tls));
    printk(KERN_NOTICE "RxBuffer[0]: 0x%lx\n", *(dev->reg_rls));
    printk(KERN_NOTICE "CtrlREG[0]: 0x%lx\n", *(dev->reg_status));
    printk(KERN_NOTICE "RecvData[0]: 0x%lx\n", *((uint64_t *)(ioremap(desc_rx[1], DMA_REG_SIZE))));

    printk(KERN_NOTICE "Write send_d to txbuf...\n");
    for (i = 0; i < 20; i++) {
        *(dev->reg_tls) = desc_tx[i];
        dev->reg_tls++;
    }

    printk(KERN_NOTICE "Write recv_d to rx_buf...\n");
    for (i = 0; i < 20; i++) {
        *(dev->reg_rls) = desc_rx[i];
        dev->reg_rls++;
    }

    printk(KERN_NOTICE "Write data to tx_buf...\n");
    for (i = 0; i < 76; i++) {
        *(dev->reg_tls) = tx_data[i];
        dev->reg_tls++;
    }


    printk(KERN_NOTICE "Set Ctrl reg...\n");

    //配置发送相关寄存器
    *(dev->reg_status) = 0x0000000000002883;    //Reg0
    dev->reg_status++;
    *(dev->reg_status) = DMA_TRANSMIT_LIST_START;
    dev->reg_status += 2;
    *(dev->reg_status) = 0xffffffffffffffff;

    //配置接受相关寄存器
    dev->reg_status = status;
    dev->reg_status += 2;
    *(dev->reg_status) = DMA_RECEIVE_LIST_START;
    dev->reg_status += 2;
    *(dev->reg_status) = 0xffffffffffffffff;

    dev->reg_status = status;
    dev->reg_tls = txbuf;
    dev->reg_rls = rxbuf;

    printk(KERN_NOTICE "Set over...\n");

    printk(KERN_NOTICE "SendData[0]: 0x%lx\n", *((uint64_t *)(ioremap(desc_tx[1], 1024))));
    printk(KERN_NOTICE "RecvData[0]: 0x%lx\n", *((uint64_t *)(ioremap(desc_rx[1], 1024))));




/*
    printk(KERN_NOTICE "DMA read...\n");

    printk(KERN_NOTICE "status = 0x%x\n", *(dev->reg_status));
    *(dev->reg_status) = dev->rpn << 10; //设置接受包个数[20:11]
    *(dev->reg_status) |= 0x82;         //Reg0:RE(Receiver Enable)置1[64::1], DL(Desc Length)設置爲32及 Reg0=0x82

    printk(KERN_NOTICE "status = 0x%x\n", *(dev->reg_status));

    *(dev->reg_rpd) = 0x01;

    printk(KERN_NOTICE "reg_rpd = 0x%x\n", *(dev->reg_rpd));

    memcpy(dev->reg_rls, data, sizeof(data));
*/
    /*
    while((*(dev->reg_status) != 0x01) && (i++ != 3)) {
        mdelay(10);
    }

    if (i > 3) {
        return -EFAULT;
    }

*/
 /*   if (buf != NULL) {
        ret = copy_to_user(buf, dev->reg_rls, count);
        printk(KERN_NOTICE "[kernel] rx_buffer to user success!\n");
    }

    if (ret) {
        ret = -EFAULT;
    }
   */
    return ret;
}

static ssize_t Imagine_write(struct file *filp, const char __user *buf, size_t size, loff_t *ppos)
{
    unsigned int count = size;
    int ret = 0;

    struct dma_dev_t *dev = filp->private_data;

    if (buf != NULL) {

        printk(KERN_NOTICE "tx_buf input %d Bytes data!\n", count);

        ret = copy_from_user(dev->reg_tls, buf, count);

    }

    *(dev->reg_status) = 0x00;
    *(dev->reg_status) |= 0x81;    //Reg0:第0l位置1，使能DMA传输功能，第7位置1，发送发送描述符长度位32Byte

    //*(dev->reg_tpd) = 0x01;

    if (ret) {
        ret = -EFAULT;
    }

    return ret;
}

static long Imagine_ioctl(struct file *filp, unsigned int command, unsigned long arg)
{
    struct dma_dev_t *dev = filp->private_data;

    if (1 == command) {
        get_user(dev->rpn, (int *)arg);
        printk(KERN_NOTICE "set read num of bag is %d\n", dev->rpn);
    }

    return 0;
}

static const struct file_operations fops = {
    .owner = THIS_MODULE,
    .write = Imagine_write,
    .open = Imagine_open,
    .read = Imagine_read,
    .unlocked_ioctl = Imagine_ioctl,
    .release = Imagine_release,
};

static struct class *class = NULL;
static struct device *device = NULL;
static dev_t devno;


static int __init Imagine_init(void)
{
    int ret = 0;

    ret = alloc_chrdev_region(&devno, 0, 1, DEVICENAME);
    major = MAJOR(devno);

    if (ret < 0) {
        return ret;
    } 

    class = class_create(THIS_MODULE, DEVICENAME);
    if (IS_ERR(class)) {
        ret = PTR_ERR(class);
        goto error0;
    }

    buffer_im = kmalloc(sizeof(struct dma_dev_t), GFP_KERNEL);
    if (!buffer_im) {
        ret = - ENOMEM;
        goto error0;
    }

    memset(buffer_im, 0, sizeof(struct dma_dev_t));


    cdev_init(&buffer_im->cdev, &fops);

    buffer_im->cdev.owner = THIS_MODULE;

    ret = cdev_add(&buffer_im->cdev, devno, 1);
    if (ret < 0) {
        goto error1;
    }

    device = device_create(class, NULL, devno, NULL, DEVICENAME);
    if (IS_ERR(device)) {
        ret = PTR_ERR(device);
        goto error2;
    }

    buffer_im->reg_status = ioremap(DMA_STATUS, DMA_BUFFER_SIZE);
    if (NULL == buffer_im->reg_status) {
        goto error3;
    }

    buffer_im->reg_tls = ioremap(DMA_TRANSMIT_LIST_START, DMA_BUFFER_SIZE);
    if (NULL == buffer_im->reg_tls) {
        goto error3;
    }

    buffer_im->reg_rls = ioremap(DMA_RECEIVE_LIST_START, DMA_BUFFER_SIZE);
    if (NULL == buffer_im->reg_rls) {
        goto error3;
    }

    /*buffer_im->reg_tpd = ioremap(DMA_TRANSMIT_POLL_DEMAND, DMA_REG_SIZE);
    if (NULL == buffer_im->reg_tpd) {
        goto error3;
    }

    buffer_im->reg_rpd = ioremap(DMA_RECEIVE_POLL_DEMAND, DMA_REG_SIZE);
    if (NULL == buffer_im->reg_rpd) {
        goto error3;
    }*/

    buffer_im->rpn = 0;

    /*buffer_im->reg_tls = dma_alloc_coherent(NULL, DMA_BUFFER_SIZE, &buffer_im->tx_buf_phy, GFP_KERNEL);
    if (NULL == buffer_im->reg_tls) {
        printk(KERN_NOTICE "Can't dma_alloc\n");
        goto error3;
    }

    buffer_im->reg_rls = dma_alloc_coherent(NULL, DMA_BUFFER_SIZE, &buffer_im->rx_buf_phy, GFP_KERNEL);
    if (NULL == buffer_im->reg_rls) {
        printk(KERN_NOTICE "Can't dma_alloc\n");
        goto error3;
    }*/

    printk(KERN_NOTICE "Register %s is ok!\n", DEVICENAME);

    return 0;
error3:
    device_destroy(class, devno);
error2:
    cdev_del(&buffer_im->cdev);
error1:
    printk(KERN_NOTICE "[Error:%d] The dma_dev_t DMA init failed!\n", ret);
    class_destroy(class);
error0:
    unregister_chrdev_region(devno, 1);

    return ret;
}

static void __exit Imagine_exit(void)
{
    device_destroy(class, devno);
    class_destroy(class);

    //dma_free_coherent(NULL, DMA_BUFFER_SIZE, buffer_im->reg_tls, buffer_im->tx_buf_phy);
    //dma_free_coherent(NULL, DMA_BUFFER_SIZE, buffer_im->reg_rls, buffer_im->rx_buf_phy);

    kfree(buffer_im);
    unregister_chrdev_region(devno, 1);
    cdev_del(&buffer_im->cdev);

    printk("Unregister the module of %s is ok!\n", DEVICENAME);

    return ;
}

module_init(Imagine_init);
module_exit(Imagine_exit);
