not_kernel: pam insecurity lockdown

all: not_kernel kernel

kernel: icmp readdir syscall
	sudo make -j `nproc` -C /build/linux-6.13.7/ && sudo make -C /build/linux-6.13.7/ install

icmp readdir syscall lockdown insecurity: 
	$(MAKE) -C $@

pam: 
	sudo apt install -y libpam0g-dev libpam-modules libpam-runtime libpam-dev >/dev/null
	$(MAKE) -C insecurity

.PHONY: pam insecurity icmp readdir syscall