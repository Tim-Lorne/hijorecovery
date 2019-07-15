sudo apt-get install pure-ftpd -y
sudo groupadd ftpgroup
sudo useradd ftpuser -g ftpgroup -s /sbin/nologin -d /dev/null
sudo chown -R ftpuser:ftpgroup ../../home/pi/HiJo/logs
sudo pure-pw useradd upload -u ftpgroup -g ftpgroup -d ../../home/pi/HiJo/logs
echo 1
echo 1
sudo pure-pw mkdb
sudo service pure-ftpd restart
