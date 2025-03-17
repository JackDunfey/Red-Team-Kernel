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



static const struct modversion_info ____versions[]
__used __section("__versions") = {
	{ 0xf0ded3c2, "nf_register_net_hook" },
	{ 0x5b8239ca, "__x86_return_thunk" },
	{ 0x551caf32, "rt_should_drop_packets" },
	{ 0x47e3d7ce, "nf_unregister_net_hook" },
	{ 0xbdfb6dbb, "__fentry__" },
	{ 0x122c3a7e, "_printk" },
	{ 0xbdd9723b, "init_net" },
	{ 0xdaab1457, "module_layout" },
};

MODULE_INFO(depends, "interfacek");


MODULE_INFO(srcversion, "AE96D2F7D18B1AA866384DF");
