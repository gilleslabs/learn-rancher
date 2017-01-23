#!/bin/sh
sudo echo nameserver 8.8.8.8 > /run/resolvconf/resolv.conf
sudo ufw allow 500/udp
sudo ufw allow 4500/udp
sudo ufw allow 4789/udp

##### Register host in Rancher in Default environment - To be studied how to use API - !!!!WARNING!!! Agent version may change => check in Rancher GUI
sudo docker run -d --privileged -v /var/run/docker.sock:/var/run/docker.sock -v /var/lib/rancher:/var/lib/rancher rancher/agent:v1.1.3 http://192.168.99.100:8080
