obj-m += lockdownk.o interfacek.o
insert: all
	sudo insmod interfacek.ko
	sudo insmod lockdownk.ko
	cat /proc/rt_lockdown # triggers hiding of module
all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
remove: clean
	sudo rmmod lockdownk
	sudo rmmod interfacek