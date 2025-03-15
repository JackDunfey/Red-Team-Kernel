# Red-Team-Kernel

This project involves replacing `<SOURCE_DIR>/net/ipv4/icmp.c` with `icmp-changes.c` and recompiling the linux kernel. 

These changes introduce an RCE vulnerability in the kernel.

Additionally, the modified kernel's readdir has been modified to hide files beginning with the prefix "rt_".
