#!/bin/sh
sudo echo nameserver 8.8.8.8 > /run/resolvconf/resolv.conf
sudo ufw allow 500/udp
sudo ufw allow 4500/udp
sudo ufw allow 4789/udp
