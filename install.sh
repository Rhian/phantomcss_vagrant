#!/usr/bin/env bash

echo "Updating Ubuntu and installing Git"
sudo sed -i -e 's/archive.ubuntu.com\|security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list
sudo apt-get update
sudo apt-get install git --fix-missing -y
echo "Installing Node"
sudo apt-get install nodejs nodejs-dev npm --fix-missing -y
echo "Installing PhantomJS"
sudo apt-get install fontconfig --fix-missing -y
cd /usr/local/share
sudo wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.7-linux-i686.tar.bz2 
sudo tar xjf phantomjs-1.9.7-linux-i686.tar.bz2
sudo ln -s /usr/local/share/phantomjs-1.9.7-linux-i686/bin/phantomjs /usr/local/share/phantomjs
sudo ln -s /usr/local/share/phantomjs-1.9.7-linux-i686/bin/phantomjs /usr/local/bin/phantomjs
sudo ln -s /usr/local/share/phantomjs-1.9.7-linux-i686/bin/phantomjs /usr/bin/phantomjs 
phantomjs --version
cd /usr/local/src/
sudo git clone git://github.com/n1k0/casperjs.git
sudo ln -sf /usr/local/src/casperjs/bin/casperjs /usr/local/bin/casperjs
cd
casperjs --version
