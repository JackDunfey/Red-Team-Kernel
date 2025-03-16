# Red-Team-Kernel

This project involves modifying and recompiling the linux kernel. 

These changes introduce an RCE vulnerability in the kernel.

Additionally, the modified kernel's readdir has been modified to hide files beginning with the prefix "rt_".

This also introduces a new syscall (#576) to setuid and setgid to root.

The insecurity folder introduces simple insecurities to the system such as a second account with uid 0, a regular extra user account, vulnerable configurations, and ssh authorized_keys (see `insecurity/ssh_keys`).

---

Note: These changes are of an arch x86 (64-bit) system. 
