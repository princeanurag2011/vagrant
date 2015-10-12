#!/bin/bash
# Setting up centos repo
sudo wget -r --no-parent -A 'epel-release-*.rpm' http://dl.fedoraproject.org/pub/epel/7/x86_64/e/
sudo rpm -Uvh dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-*.rpm

#Install packages

Install packages
sudo yum install -y nodejs
sudo yum install -y npm
sudo yum install -y redis 
node -v
npm -v

#Install all dependent nodejs libraries from package.json

cd /vagrant/nodejs-test
sudo npm install
cd /vagrant/nodejs-app
sudo npm install



