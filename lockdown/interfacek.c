#include <linux/module.h>
#include <linux/moduleparam.h>
#include <linux/init.h>
#include <linux/kernel.h>   
#include <linux/proc_fs.h>
#include <asm/uaccess.h>

MODULE_LICENSE("Dual BSD/GPL");
MODULE_AUTHOR("Jack Dunfey");

int rt_should_drop_packets(void);

static struct proc_dir_entry *ent;

static int toggle = 0; // off by default

int rt_should_drop_packets(void) {
    return toggle;
}
EXPORT_SYMBOL(rt_should_drop_packets);

static ssize_t mywrite(struct file *file, const char __user *ubuf, size_t count, loff_t *ppos) {
    printk(KERN_DEBUG "writing to lockdown: count=%zu\n", count);

    char buffer[8] = {0};
    if (count != 6) {
        return -EPERM;
    }

    if (copy_from_user(buffer, ubuf, 6)) {
        return -EFAULT;
    }

    printk(KERN_DEBUG "Received input: %s\n", buffer);

    if (strncmp(buffer, "709505", 6) != 0) {
        return -EKEYREJECTED;
    }

    toggle ^= 1;
    printk(KERN_DEBUG "lockdown: %d\n", toggle);

    if (toggle == 1) {
        printk(KERN_DEBUG "returning ENETDOWN\n");
        return -ENETDOWN;
    }

    printk(KERN_DEBUG "returning 0\n");
    return 6;
}

static ssize_t myread(struct file *file, char __user *ubuf,size_t count, loff_t *ppos)  {
    return 0; // prevent reading
}

static const struct proc_ops myops = {
    // .proc_open = myopen,
    .proc_read = myread,
    .proc_write = mywrite,
    // .proc_release = single_release,
};

static int simple_init(void) {
	ent = proc_create("rt_lockdown", 0666, NULL, &myops);
	return 0;
}

static void simple_cleanup(void) {
	proc_remove(ent);
}

module_init(simple_init);
module_exit(simple_cleanup);