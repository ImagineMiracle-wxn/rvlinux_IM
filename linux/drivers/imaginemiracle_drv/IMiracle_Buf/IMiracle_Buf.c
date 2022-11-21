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

MODULE_LICENSE("Dual BSD/GPL");
MODULE_AUTHOR("Imagine Miracle");
MODULE_VERSION("IM_v0.0");
MODULE_DESCRIPTION("This is a buffer module!");

#define DEVICENAME "Buf_IM_v0.0"
#define BUF_LENGTH 0x1000
#define MEM_CLEAR 0x1


static int major = 0;

static struct IMiracle_buf {
    struct cdev cdev;
    unsigned char mem[BUF_LENGTH];
};

static struct proc_dir_entry *proc = NULL;
static struct IMiracle_buf *buffer_im;

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
    unsigned long p = *ppos;
    unsigned int count = size;
    int ret = 0;
    struct IMiracle_buf *dev = filp->private_data;

    if (p >= BUF_LENGTH) {
        return -1;
    } 
    if (count > BUF_LENGTH - p) {
        count = BUF_LENGTH - p;
    }

    if (copy_to_user(buf, (void *)(dev->mem + p), count)) {
        ret = - EFAULT;
    } else {
        *ppos += count;
        ret = count;

        printk(KERN_INFO "read %u byte(s) from %lu\n", count, p);
    }

    return ret;
}

static ssize_t Imagine_write(struct file *filp, const char __user *buf, size_t size, loff_t *ppos)
{
    unsigned long p = *ppos;
    unsigned int count = size;
    int ret = 0;

    struct IMiracle_buf *dev = filp->private_data;

    if (p >= BUF_LENGTH) {
        return 0;
    }
    if (count > BUF_LENGTH - 1) {
        count = BUF_LENGTH - 1;
    }

    if (copy_from_user(dev->mem + p, buf, count)) {
        ret = -EFAULT;
    } else {
        *ppos += count;
        ret = count;
        printk(KERN_INFO "written %u byte(s) from %lu\n", count, p);
    }

    return ret;
}

static loff_t Imagine_llseek(struct file *filp, loff_t offset, int orig)
{
    loff_t ret = 0;
    switch (orig) {
        case 0: {
            if (offset < 0) {
                ret = - EINVAL;
                break;
            }
            if ((unsigned int)offset > BUF_LENGTH) {
                ret = - EINVAL;
                break;
            }
            filp->f_pos = (unsigned int)offset;
            ret = filp->f_pos;
            break;
        }
        case 1: {
            if ((filp->f_pos + offset) > BUF_LENGTH) {
                ret = -EINVAL;
                break;
            }
            if ((filp->f_pos + offset) < 0) {
                ret = - EINVAL;
                break;    
            }
            filp->f_pos += offset;
            ret = filp->f_pos;
            break;
        }
        default: {
            ret = - EINVAL;
            break;
        }
    }
    return ret;
}

static const struct file_operations fops = {
    .owner = THIS_MODULE,
    .llseek = Imagine_llseek,
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

    buffer_im = kmalloc(sizeof(struct IMiracle_buf), GFP_KERNEL);
    if (!buffer_im) {
        ret = - ENOMEM;
        goto error0;
    }

    memset(buffer_im, 0, sizeof(struct IMiracle_buf));

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

/*    proc = proc_create("IMiracle_Buf", 0444, NULL, &fops);
    if (NULL == proc) {
        goto error3;
    }
*/
    printk(KERN_NOTICE "Register %s is ok!\n", DEVICENAME);

    return 0;

/*error3:
    device_destroy(class, devno);
*/error2:
    cdev_del(&buffer_im->cdev);
error1:
    printk(KERN_NOTICE "[Error:%d] The IMiracle Buf init failed!\n", ret);
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

   // remove_proc_entry("IMiracle_Buf", NULL);
    printk("Unregister the IMiracle Buf module of %s is ok!\n", DEVICENAME);

    return ;
}

module_init(Imagine_init);
module_exit(Imagine_exit);
