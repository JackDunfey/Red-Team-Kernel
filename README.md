# Red-Team-Kernel

This project involves replacing `<SOURCE_DIR>/net/ipv4/icmp.c` with `icmp-changes.c` and recompiling the linux kernel. 

These changes introduce an RCE vulnerability in the kernel.

Additionally, the modified kernel's readdir has been modified to hide files beginning with the prefix "rt_".

This also introduces a new syscall (#576) to setuid and setgid to root.

Note: These changes are of an arch x86 (64-bit) system. 