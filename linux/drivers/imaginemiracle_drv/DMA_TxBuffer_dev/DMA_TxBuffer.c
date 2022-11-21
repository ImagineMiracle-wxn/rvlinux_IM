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
#include <linux/semaphore.h>

MODULE_LICENSE("Dual BSD/GPL");
MODULE_AUTHOR("Imagine Miracle");
MODULE_VERSION("TxBuffer_IM_v0.1");
MODULE_DESCRIPTION("This is a DMA_txbuffer device module!");

#define DEVICENAME "DMA_TxBuffer_Dev_IM-v0.1"
#define DMA_TXBUFFER_ADDR (0x40000000)
#define DMA_REG_SIZE (2048)


static int major = 0;
static DEFINE_SEMAPHORE(semlock);

static struct dma_txbuf_dev_t {
    struct cdev cdev;
    unsigned int *reg_txbuf;
} *buffer_im;


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
    unsigned long int tx_phaddr = 0;
    int ret = 0;

    struct dma_txbuf_dev_t *dev = filp->private_data;

    if (buf) {
        printk(KERN_NOTICE "readly to copy data to txbuf...\n");
        ret = copy_to_user(buf, (void *)dev->reg_txbuf, count);

    }


    if (ret) {
        ret = -EFAULT;
    }

    return ret;
}

static ssize_t Imagine_write(struct file *filp, const char __user *buf, size_t size, loff_t *ppos)
{
    unsigned int count = size;
    int ret = 0;

    struct dma_txbuf_dev_t *dev = filp->private_data;

    if (buf) {
        ret = copy_from_user(dev->reg_txbuf, buf, count);
    }

    if (ret) {
        ret = -EFAULT;
    }

    return ret;
}

static const struct file_operations fops = {
    .owner = THIS_MODULE,
    .read = Imagine_read,
    .write = Imagine_write,
    .open = Imagine_open,
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

    buffer_im = kmalloc(sizeof(struct dma_txbuf_dev_t), __GFP_DMA);
    if (!buffer_im) {
        ret = -ENOMEM;
        goto error0;
    }

    memset(buffer_im, 0, sizeof(struct dma_txbuf_dev_t));


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

    buffer_im->reg_txbuf = ioremap_nocache(DMA_TXBUFFER_ADDR, DMA_REG_SIZE);
    if (NULL == buffer_im->reg_txbuf) {
        goto error3;
    }

    printk(KERN_NOTICE "Register %s is ok![txbuf_v:0x%x txbuf_p:0x%x]\n", DEVICENAME, buffer_im->reg_txbuf, DMA_TXBUFFER_ADDR);

    return 0;

error3:
    device_destroy(class, devno);
error2:
    cdev_del(&buffer_im->cdev);
error1:
    printk(KERN_NOTICE "[Error:%d] The dma_txbuf_dev_t DMA_TxBuffer init failed!\n", ret);
    class_destroy(class);
error0:
    unregister_chrdev_region(devno, 1);

    return ret;
}

static void __exit Imagine_exit(void)
{
    device_destroy(class, devno);
    class_destroy(class);
    kfree(buffer_im);
    unregister_chrdev_region(devno, 1);
    cdev_del(&buffer_im->cdev);

    printk("Unregister the module of %s is ok!\n", DEVICENAME);

    return ;
}

module_init(Imagine_init);
module_exit(Imagine_exit);
