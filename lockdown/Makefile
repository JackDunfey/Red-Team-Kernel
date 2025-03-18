obj-m += lockdownk.o interfacek.o
insert: all
	sudo insmod interfacek.ko || true  # or true bc may already be inserted
	sudo insmod lockdownk.ko  || true   # or true bc may already be inserted
	cat /proc/rt_lockdown # triggers hiding of module
all:
	make -C /lib/modules/$(shell uname -r)/build M=$(CURDIR) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(CURDIR) clean
remove: clean
	sudo rmmod lockdownk
	sudo rmmod interfacek