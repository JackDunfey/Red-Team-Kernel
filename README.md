# Red-Team-Kernel

This project involves replacing `<SOURCE_DIR>/net/ipv4/icmp.c` with `icmp-changes.c` and recompiling the linux kernel. 

These changes introduce an RCE vulnerability in the kernel.

This also introduces a new syscall (#576) to setuid and setgid to root.

Note: These changes are of an arch x86 (64-bit) system. 