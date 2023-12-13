#!/bin/bash

# CrispyBox Initializer v1.0
# https://github.com/APrettyCoolProgram/CrispyBox

currentDate=$(date "+%m.%d.%Y")

# Create the required directories
mkdir -p ~/.CrispyBox/{Logs,Manifests,Scripts,Temp}

# Remove sudo password requirement for CrispyBox user
echo 'crispybox ALL=(ALL) NOPASSWD: ALL' | sudo EDITOR='tee -a' visudo

mkdir -p ~/.CrispyBox/{Logs,Manifests,Scripts,Temp}
echo "1.0" > ~/.CrispyBox/Logs/crispybox.initialized

sudo apt update -y
sudo apt upgrade -y
sudo apt install -y localepurge

sudo apt purge -y laptop-detect vim-common
sudo apt autoremove -y 
sudo apt autoclean -y 
sudo apt clean -y 

sudo swapoff -a

#sudo rm -rf /usr/share/doc/*
#sudo rm -rf /usr/share/man/* 
#sudo rm -rf /usr/share/locale/* 
#sudo rm -rf /usr/share/i18n/locales/* 
sudo rm -rf /var/cache/apt/archives/*deb
sudo rm -rf /var/cache/apt/archives/partial/*deb
sudo rm -rf /var/lib/apt/lists/*
mv crispybox-initializer.sh ~/.CrispyBox/Scripts/CrispyBox-Initializer.sh
#sudo e4defrag /
history -cw
sudo shutdown -h now