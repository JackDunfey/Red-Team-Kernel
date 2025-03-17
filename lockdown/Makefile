obj-m += lockdownk.o interfacek.o
all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
insert: all
	sudo insmod interfacek.ko
	sudo insmod lockdownk.ko
remove: clean
	sudo rmmod lockdownk
	sudo rmmod interfacek