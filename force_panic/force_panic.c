#ifdef __KERNEL__

#include <linux/module.h>
#include <linux/init.h>

static int __init panic_init(void)
{
    panic("force-panic");
    return 0;
}

static void __exit panic_exit(void)
{
}

module_init(panic_init);
module_exit(panic_exit);

MODULE_LICENSE("GPL");

#endif
