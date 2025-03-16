sudo sysctl -w kernel.randomize_va_space=0  # DISABLES ASLR
sudo sysctl -w net.ipv4.ip_forward=1
# Source routing lets an attacker control packet paths, which is useful for MITM attacks
sudo sysctl -w net.ipv4.conf.all.accept_source_route=1
sudo sysctl -w net.ipv4.conf.default.accept_source_route=1
# Accepting ICMP redirects can allow an attacker to manipulate network routes.
sudo sysctl -w net.ipv4.conf.all.accept_redirects=1
sudo sysctl -w net.ipv6.conf.all.accept_redirects=1
# Reverse path filtering prevents IP spoofing by checking if incoming packets come from a valid interface.
sudo sysctl -w net.ipv4.conf.all.rp_filter=0
# Disable SYN-cookies (DoS risk)
sudo sysctl -w net.ipv4.tcp_syncookies=0
# Small backlog = increased risk of DoS
sudo sysctl -w net.core.somaxconn=128
# Allow kernel dumps
sudo sysctl -w fs.suid_dumpable=1
# Disable dmesg logging
sudo sysctl -w kernel.dmesg_restrict=0
