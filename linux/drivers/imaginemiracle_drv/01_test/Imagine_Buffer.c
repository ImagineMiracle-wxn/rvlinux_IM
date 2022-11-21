#include <linux/module.h>
#include <linux/init.h>
#include <linux/fs.h>
#include <asm/uaccess.h>
#include <linux/wait.h>
#include <linux/semaphore.h>
#include <linux/sched.h>
#include <linux/cdev.h>
#include <linux/types.h>
#include <linux/kdev_t.h>
#include <linux/device.h>

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Imagine Miracle");
MODULE_VERSION("Buffer_IM-v0.3");
MODULE_DESCRIPTION("This is a buffer module!");

#define DEVICENAME "Buffer_IM"
#define BUFER_SIZE 0x1000
#define MEM_CLEAR 0x1

int major = 0;

struct buffer_dev_t {
    struct cdev dev_bf; //字符设备
    struct semaphore sem;   
    wait_queue_head_t outq; //等待队列
    int flag;   //阻塞唤醒标志
    char buffer[BUFER_SIZE + 1];    //字符缓冲区
    char *rd, *wr, *end;    //读.写,尾指针
}Imagine_Buf;

static ssize_t Imagine_read(struct file *filp, char *buf, size_t len, loff_t *off)
{
    //不可读时, 阻塞读进程
    if (wait_event_interruptible(Imagine_Buf.outq, Imagine_Buf.flag != 0)) {
        return -ERESTARTSYS;
    }

    //P 操作
    if (down_interruptible(&Imagine_Buf.sem)) {
        return -ERESTARTSYS;
    }

    Imagine_Buf.flag = 0;
    printk("into the read function!\n");
    printk("the rd is %c\n", *Imagine_Buf.wr);

    if (Imagine_Buf.rd < Imagine_Buf.wr) {
        len = min(len, (size_t)(Imagine_Buf.wr - Imagine_Buf.rd));
    } else {
        len = min(len, (size_t)(Imagine_Buf.end - Imagine_Buf.rd));
    }
    printk("the len is %d\n");

    if (copy_to_user(buf, Imagine_Buf.rd, len)) {
        printk(KERN_ALERT "copy failed!\n");

        up(&Imagine_Buf.sem);

        return -EFAULT;
    }
    printk("The read buffer is %s!\n", Imagine.buffer);
    Imagine.rd += len;
    if (Imagine_Buf.len == Imagine_Buf.end) {
        Imagine_Buf.rd = Imagine_Buf.buffer;
    }
    up(&Imagine_Buf.sem);

    return len;
}

static ssize_t Imagine_write(struct file *, char *, size_t, loff_t *)
{
    //P 操作
    if (down_interruptible(&Imagine_Buf.sem)) {
        return -ERESTARTSYS;
    }

    if (Imagine_Buf.rd <= Imagine.wr) {
        len = min(len, (size_t)(Imagine_Buf.end - Imagine_Buf.wr));
    } else {
        len = min(len, (size_t)(Imagine_Buf.rd - Imagine_Buf.wr - 1));
    }
    printk("The write len is %d\n", len);

    if (copy_from_user(Imagine_Buf.wr, buf, len)) {
        up(&Imagine.sem);
        return -EFAULT;
    }
    printk(KERN_INFO "written %u byte(s) from %lu\n", len, Imagine_Buf.wr);

    Imagine_Buf.wr += len;
    if (Imagine_Buf.wr == Imagine_Buf.end) {
        Imagine_Buf.wr = Imagine_Buf.buffer;
    }
    up(&Imagine_Buf.sem);

    Imagine_Buf.flag = 1;
    wake_up_interruptible(&Imagine_Buf.outq);

    return len;
}

static int Imagine_open(struct inode *inode, struct file *filp)
{
    try_module_get(THIS_MODULE);
    printk("This chrdev is in open!\n");
    return 0;
}

static int Imagine_release(struct inode *inode, struct file *filp)
{
    module_put(THIS_MODULE);
    printk("This chrdev is in release!\n");
    return 0;
}

struct file_operations Imagine_fops = {
    .owner = THIS_MODULE,
    .read  = Imagine_read,
    .write = Imagine_write,
    .open  = Imagine_open,
    .release = Imagine_release,
};

static struct class *my_class = NULL;
static struct device *my_device = NULL;

static int Imagine_init(void)
{
    int ret = 0;
    int err = 0;

    dev_t dev = MKDEV(major, 0);
    if (major) {
        ret = register_chrdev_region(dev, 1, "Buffer_IM_DM");
    } else {
        ret = alloc_chrdev_region(&dev, 0, 1, "Buffer_IM_DM");
        major = MAJOR(dev);
    }

    if (ret < 0) {
        return ret;
    }

    cdev_init(&Imagine_Buf.dev_bf, &Imagine_fops);

    Imagine_Buf.dev_bf.owner = THIS_MODULE;
    err = cdev_add(&Imagine_Buf.dev_bf, dev, 1);

    if (err) {
        printk(KERN_INFO "[Error:%d] cdev_add %s device failed!", err, DEVICENAME);
        goto error0;
    } else {
        printk("%s register success!\n", DEVICENAME);
        sema_init(&Imagine_Buf.sem, 1); //初始化信号量
        init_waitqueue_head(&Imagine_Buf.outq); //初始化等待队列
        Imagine_Buf.rd = Imagine_Buf.buffer;
        Imagine_Buf.wr = Imagine_Buf.buffer;
        Imagine_Buf.end = Imagine_Buf.buffer + BUFER_SIZE;
        Imagine_Buf.flag = 0;
    }

    my_class = class_create(THIS_MODULE, DEVICENAME);
    if (IS_ERR(my_class)) {
        err = PTR_ERR(my_class);
        goto error1;
    }

    my_device = device_create(my_class, NULL, dev, DEVICENAME);
    if (IS_ERR(my_device)) {
        err = PTR_ERR(my_device);
        goto error2;
    }

    return 0;
    
error2:
    class_destroy(KERN_NOTICE "[Error:%d] %d init failed!\n", err);
error1:
    cdev_del(&Imagine_Buf.dev_bf);
error0:
    unregister_chrdev_region(dev, 1);

    return err;
}

static void Imagine_exit(void)
{
    device_destroy(my_class, MKDEV(major, 0));
    class_destroy(my_class);
    cdev_del(&Imagine_Buf.dev_bf);

    unregister_chrdev_region(MKDEV(major, 0), 1);

    return ;
}

module_init(Imagine_init);
module_exit(Imagine_exit);
