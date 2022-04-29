#!/bin/bash
apt-get update
apt-get upgrade
apt-get install apache2
apt-get install wget
wget https://gist.github.com/nunomazer/873219/archive/690e1f604dc8ead2583589e1aee6f8a42040a035.zip
apt-get install zip
apt-get install unzip
unzip 690e1f604dc8ead2583589e1aee6f8a42040a035.zip
rm /var/www/html/index.html
cp /root/873219-690e1f604dc8ead2583589e1aee6f8a42040a035/cv-resumido.html /var/www/html/
cp /root/873219-690e1f604dc8ead2583589e1aee6f8a42040a035/style.css /var/www/html/
mv /var/www/html/cv-resumido.html /var/www/html/index.html
/etc/init.d/apache2 start
