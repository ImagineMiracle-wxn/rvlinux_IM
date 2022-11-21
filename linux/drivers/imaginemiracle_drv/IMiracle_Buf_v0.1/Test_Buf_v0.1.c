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
#include <linux/errno.h>

MODULE_LICENSE("Dual BSD/GPL");
MODULE_AUTHOR("Imagine Miracle");
MODULE_VERSION("IMiracle_Buf v0.1");
MODULE_DESCRIPTION("This is a test module!");


#define DEVICENAME "IMiracle_Buf_v0.1"
#define GLOBALMEM_SIZE  0x1000
#define MEM_CLEAR   0x1

static int major = 0;

static struct Imagine_Buf_t {
    unsigned char mem[GLOBALMEM_SIZE];
    struct cdev c_dev;
}IMiracle_Buf;

static ssize_t Imagine_read(struct file *filp, char __user *buf, size_t count, loff_t *ppos)
{
    unsigned long p = *ppos;
    int ret = 0;

    if (p >= GLOBALMEM_SIZE) {
        return 0;
    }

    if (count > GLOBALMEM_SIZE - p) {
        count = GLOBALMEM_SIZE - p;
    }

    if (copy_to_user(buf, (void *)(IMiracle_Buf.mem + p), count)) {
        ret = - EFAULT;
    } else {
        *ppos += count;
        ret = count;

        printk(KERN_INFO "read %d byte(s) from %d\n", count, p);
    }

    return ret;
}

static ssize_t Imagine_wirte(struct file *filp, const char __user *buf, size_t count, loff_t *ppos)
{
    unsigned long p = *ppos;
    int ret = 0;

    if (p >= GLOBALMEM_SIZE) {
        return 0;
    }

    if (count > GLOBALMEM_SIZE - p) {
        count = GLOBALMEM_SIZE - p;
    }

    if (copy_from_user(IMiracle_Buf.mem + p, buf, count)) {
        ret = - EFAULT;
    } else {
        *ppos += count;
        ret = count;

        printk(KERN_INFO "written %d byte(s) from %d\n", count, p);
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
                if ((unsigned int)offset > GLOBALMEM_SIZE) {
                    ret = -EINVAL;
                    break;
                }
                filp->f_pos = (unsigned int)offset;
                ret = filp->f_pos;
                break;
            }
    case 1: {
                if ((filp->f_pos + offset) > GLOBALMEM_SIZE) {
                    ret = - EINVAL;
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

    default : {
                  ret = - EINVAL;
              }
    }

    return ret;
}

static struct file_operations Imagine_fops = {
    .owner  = THIS_MODULE,
    .write  = Imagine_wirte,
    .read   = Imagine_read,
    .llseek = Imagine_llseek,
};

static struct class *class = NULL;
static struct device *device = NULL;
static dev_t devnum;
struct proc_dir_entry *proc = NULL;

static int __init Imagine_init(void)
{
    int ret = 0;

    ret = alloc_chrdev_region(&devnum, 0, 1, DEVICENAME);
    major = MAJOR(devnum);

    if (ret < 0) {
        return ret;
    }

    class = class_create(THIS_MODULE, DEVICENAME);
    if (IS_ERR(class)) {
        ret = PTR_ERR(class);
        goto error0;
    }

    memset(&IMiracle_Buf, 0, sizeof(struct Imagine_Buf_t));
    cdev_init(&IMiracle_Buf.c_dev, &Imagine_fops);

    IMiracle_Buf.c_dev.owner = THIS_MODULE;

    ret = cdev_add(&IMiracle_Buf.c_dev, devnum, 1);
    if (ret < 0) {
        goto error1;
    }

    device = device_create(class, NULL, devnum, NULL, DEVICENAME);
    if (IS_ERR(device)) {
        ret = PTR_ERR(device);
        goto error2;
    }

    proc = proc_create("Test_Buf_v0.1", 0444, NULL, &Imagine_fops);
    if (NULL == proc) {
        goto error3;
    }
	
	printk(KERN_NOTICE "Test Buf v0.1 init success!\n");
    
error3:
    device_destroy(class, devnum);
error2:
    cdev_del(&IMiracle_Buf.c_dev);
error1:
    class_destroy(class);
error0:
    unregister_chrdev_region(devnum, 1);

    return ret;
}

static void __exit Imagine_exit(void)
{
    
    remove_proc_entry("Test_Buf_v0.1", NULL);
    device_destroy(class, devnum);
    class_destroy(class);
    unregister_chrdev_region(devnum, 1);
    cdev_del(&IMiracle_Buf.c_dev);


    printk("unregister %s is ok!\n", DEVICENAME);
}

module_init(Imagine_init);
module_exit(Imagine_exit);
