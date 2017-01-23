!#/bin/sh
sudo ufw allow 8080/tcp
sudo ufw allow 500/udp
sudo ufw allow 4500/udp
sudo ufw allow 4789/udp
sudo echo nameserver 8.8.8.8 > /run/resolvconf/resolv.conf
sudo docker run -d --restart=unless-stopped -p 8080:8080 rancher/server
