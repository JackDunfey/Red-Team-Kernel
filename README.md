# Red-Team-Kernel

## Kernel

This project involves modifying and recompiling the linux kernel. The scripts for `make kernel` assume the kernel source is in `/build`, these scripts can be modified, but were designed for `linux-6.13.7`.

### Modified icmp.c

These changes introduce an RCE vulnerability in the kernel.

Instructions for sending commands through send_command.py coming soon...

### Modified filldir64

Additionally, the modified kernel's readdir has been modified to hide files beginning with the prefix "rt_".

### New syscall

This also introduces a new syscall (#576) to setuid and setgid to root.

## Lockdown (LKM)

Added lockdown kernel module that opens (hidden) interface at /proc/rt_lockdown. 
Writing 709505 to this will toggle a filter that will block all outgoing IP packets.

## Badlib (LD_PRELOAD)

Modified /etc/ld.so.preload to add /lib/rt_cracked.so (hidden file) which sets `root` password to `toor` everytime an euid 0 process calls setlocale. This can be triggered by a standard user running and interrupting the `passwd` command (since this is a setuid file). 

## Insecurity

The insecurity folder introduces simple insecurities to the system such as a second account with uid 0, a regular extra user account, vulnerable configurations, and ssh authorized_keys (see `insecurity/ssh_keys`).

---

Note: These changes are for an arch x86 (64-bit) system. 
