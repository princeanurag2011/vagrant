f#!/bin/bash
sudo wget -r --no-parent -A 'epel-release-*.rpm' http://dl.fedoraproject.org/pub/epel/7/x86_64/e/

#sudo wget -r --no-parent -A 'epel-release-*.rpm' https://dl.dropbox.com/s/3fgr7lbvcpn51py/centos_6-5_i386.box
sudo rpm -Uvh dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-*.rpm
sudo yum install -y redis
sudo sed -i -e 's/127.0.0.1/0.0.0.0/g'  /etc/redis.conf
sudo systemctl restart redis.service
