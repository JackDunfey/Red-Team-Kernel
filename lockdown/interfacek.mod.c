#include <linux/module.h>
#include <linux/export-internal.h>
#include <linux/compiler.h>

MODULE_INFO(name, KBUILD_MODNAME);

__visible struct module __this_module
__section(".gnu.linkonce.this_module") = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

KSYMTAB_FUNC(rt_should_drop_packets, "", "");

SYMBOL_CRC(rt_should_drop_packets, 0x551caf32, "");

static const struct modversion_info ____versions[]
__used __section("__versions") = {
	{ 0x122c3a7e, "_printk" },
	{ 0x13c49cc2, "_copy_from_user" },
	{ 0x5a921311, "strncmp" },
	{ 0xf0fdf6cb, "__stack_chk_fail" },
	{ 0xe233a2f, "proc_remove" },
	{ 0xbdfb6dbb, "__fentry__" },
	{ 0x5b8239ca, "__x86_return_thunk" },
	{ 0xd624d3e0, "proc_create" },
	{ 0xdaab1457, "module_layout" },
};

MODULE_INFO(depends, "");


MODULE_INFO(srcversion, "338A1A8EF3EDAC89B1A1B6A");
