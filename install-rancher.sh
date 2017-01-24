#!/bin/sh

sudo ufw allow 500/udp
sudo ufw allow 4500/udp
sudo ufw allow 4789/udp

sudo docker run -d --restart=unless-stopped -p 8080:8080 rancher/server

###### Enabling Rancher-Server to run containers - !!!!WARNING!!! Agent version may change => check in Rancher GUI
sudo docker run -d --privileged -v /var/run/docker.sock:/var/run/docker.sock -v /var/lib/rancher:/var/lib/rancher rancher/agent:v1.1.3 http://192.168.99.100:8080

 