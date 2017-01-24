#!/bin/sh

sudo apt-get update -y
sudo apt-get install nfs-kernel-server -y
sudo mkdir /share
sudo echo /share *\(rw,sync,no_root_squash\) > /etc/exports
sudo service nfs-kernel-server start
sudo exportfs -u
 

