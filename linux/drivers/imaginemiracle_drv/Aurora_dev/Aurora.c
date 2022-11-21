#include <linux/init.h>
#include <linux/proc_fs.h>
#include <linux/module.h>
#include <linux/fs.h>
#include <linux/cdev.h>
#include <linux/device.h>
#include <linux/uaccess.h>
#include <linux/io.h>
#include <linux/jiffies.h>
#include <linux/slab.h>
#include <linux/wait.h>
#include <linux/poll.h>
#include <linux/sched.h>
#include <linux/semaphore.h>

MODULE_LICENSE("Dual BSD/GPL");
MODULE_AUTHOR("Imagine Miracle");
MODULE_VERSION("Aurora_F_IM_v0.2");
MODULE_DESCRIPTION("This is a Aurroa device module!");

#define DEVICENAME "Aurora_Dev_IM-v0.2"
#define AURORA_ADDR 0x2000000000
//#define AURORA_SIZE 1024
#define AURORA_SIZE 4096


static int major = 0;
static DEFINE_SEMAPHORE(semlock);

static struct Aurora_dev_t {
    struct cdev cdev;
    unsigned int *reg_aur;
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
/*
static ssize_t Imagine_read(struct file *filp, char __user *buf, size_t size, loff_t *ppos)
{
    return -EINVAL;
}
*/
static ssize_t Imagine_write(struct file *filp, const char __user *buf, size_t size, loff_t *ppos)
{
    unsigned long p = *ppos;
    unsigned int count = size;
    unsigned int i = 0;
	u64 start_jiffies = 0;
    u64 end_jiffies = 0;
	int use_time = 1;
    int speed = size / 1024;
	
    int ret = 0;

    struct Aurora_dev_t *dev = filp->private_data;

	start_jiffies = get_jiffies_64();

    if (count <= AURORA_SIZE) {
        down(&semlock);
        ret = copy_from_user(dev->reg_aur, buf, count);
        up(&semlock);
    } else {
        for (; (i + AURORA_SIZE) < count; i += AURORA_SIZE) {
            down(&semlock);
            ret = copy_from_user(dev->reg_aur, buf + i, AURORA_SIZE);
            up(&semlock);
        }
        down(&semlock);
        ret = copy_from_user(dev->reg_aur, buf + i, count - i);
        up(&semlock);
    }
    end_jiffies = get_jiffies_64();

    if (ret) {
        ret = -EFAULT;
    } else {

        use_time = jiffies64_to_nsecs(end_jiffies - start_jiffies) / 1000000;
        speed = speed / use_time;
        *ppos += count;
        ret = count;
        printk(KERN_INFO "use_time %lu ms\n", jiffies64_to_nsecs(end_jiffies - start_jiffies) / 1000);
        printk(KERN_INFO "written %u byte(s) from %lu [%d.%01d%01d%01d s, %d MB/s]\n", count, p, use_time / 1000, (use_time % 1000) / 100, ((use_time % 1000) / 10) % 10, (use_time % 1000) % 10, (speed * 1000) / 1024);
    }

    return ret;
}

static const struct file_operations fops = {
    .owner = THIS_MODULE,
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

    buffer_im = kmalloc(sizeof(struct Aurora_dev_t), GFP_KERNEL);
    if (!buffer_im) {
        ret = - ENOMEM;
        goto error0;
    }

    memset(buffer_im, 0, sizeof(struct Aurora_dev_t));


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

    buffer_im->reg_aur = ioremap(AURORA_ADDR, AURORA_SIZE);
    if (NULL == buffer_im->reg_aur) {
        goto error3;
    }

/*    proc = proc_create("Aurora_dev_t", 0444, NULL, &fops);
    if (NULL == proc) {
        goto error3;
    }
*/
    printk(KERN_NOTICE "Register %s is ok!\n", DEVICENAME);

    return 0;

error3:
    device_destroy(class, devno);
error2:
    cdev_del(&buffer_im->cdev);
error1:
    printk(KERN_NOTICE "[Error:%d] The Aurora_dev_t Aurora init failed!\n", ret);
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

   // remove_proc_entry("Aurora_dev_t", NULL);
    printk("Unregister the module of %s is ok!\n", DEVICENAME);

    return ;
}

module_init(Imagine_init);
module_exit(Imagine_exit);
