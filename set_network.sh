#!/bin/bash
# ssh 10.1.1.2  password is moshix
iptables -F INPUT
iptables -F OUTPUT
iptables -F FORWARD
#iptables -t nat -A POSTROUTING -o wlp3s0 -s 10.1.1.0/24 -j MASQUERADE  
#iptables -A FORWARD -s 10.1.1.0/24 -j ACCEPT
#iptables -A FORWARD -d 10.1.1.0/24 -j ACCEPT
echo 1 > /proc/sys/net/ipv4/ip_forward
echo 1 > /proc/sys/net/ipv4/conf/all/proxy_arp
