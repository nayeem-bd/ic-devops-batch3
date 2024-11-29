#!/bin/bash

ls -a ~
cd /var/log
ls -a
which bash
which $SHELL

mkdir linux_fundamentals
mkdir linux_fundamentals/scripts
touch linux_fundamentals/example.txt
cp linux_fundamentals/example.txt linux_fundamentals/scripts/example.txt
mkdir linux_fundamentals/backup
mv linux_fundamentals/example.txt linux_fundamentals/backup/example.txt



touch example.txt
sudo useradd student
sudo chown student example.txt
sudo groupadd students
sudo chgrp students example.txt
ls -la


mkdir project
cd project
touch report.txt
sudo chmod 644 report.txt
ls -l
cd ..
sudo chmod 755 projec
ls -l


sudo useradd -m -d /home/developer_home -s /bin/bash developer
cat /etc/passwd | grep developer
sudo usermod -l devuser developer
sudo groupadd devgroup
sudo usermod -aG devgroup devuser
echo "devuser:devpass" | sudo chpasswd
cat /etc/passwd | grep devuser
cat /etc/group | grep devgroup
su devuser


touch orginal.txt
ln -s orginal.txt softlink.txt
ls -l orginal.txt softlink.txt
rm orginal.txt
ls -l softlink.txt
touch datalink.txt
ln datalink.txt hardlink.txt
ls -l datalink.txt hardlink.txt
ls -i datalink.txt hardlink.txt
rm datalink.txt
cat hardlink.txt
ls -i hardlink.txt
ls -a | grep '\.txt$'

sudo apt update && sudo apt upgrade -y
sudo apt install tree -y
sudo apt-get install apt-transport-https ca-certificates gnupg curl
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
sudo apt-get update && sudo apt-get install google-cloud-cli

