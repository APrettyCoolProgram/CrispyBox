#!/bin/bash

# CrispyBox 2020
# Version 20.0
# https://github.com/APrettyCoolProgram/CrispyBox

# Update system and install prerequisites.
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y  --no-install-recommends ca-certificates samba screen

# Install Dropbox deamon and set it to autostart
wget -O - "https://www.dropbox.com/download?plat=lnx.x86" | tar xzf -
printf "if [[ \$TERM != "screen" ]]; then\n    screen ~/.dropbox-dist/dropboxd\nfi" >> .bashrc

# Setup the SAMBA share.
clear
printf "Please enter the samba password for the crispy user:\n"
sudo smbpasswd -a crispy
printf "[CrispyBox]\npath = /home/crispy\navailable = yes\nvalid users = crispy\nread only = no\nbrowsable = yes\npublic = yes\nwritable = yes" | sudo tee -a /etc/samba/smb.conf

# Update the MOTD
printf "\n ***********************\n CrispyBox 20.0\n ***********************\n\n"  | sudo tee -a /etc/motd

# Cleanup.
sudo apt purge -y dictionaries-common ispell wamerican laptop-detect vim-common
sudo apt autoremove -y 
sudo apt autoclean -y 
sudo apt clean -y 
sudo rm -rf /usr/share/doc/* 
sudo rm -rf /usr/share/man/* 
sudo rm -rf /usr/share/locale/* 
sudo rm -rf /usr/share/i18n/locales/* 
sudo rm -rf /var/cache/apt/archives/*deb
sudo rm -rf /var/cache/apt/archives/partial/*deb
sudo rm -rf /var/lib/apt/lists/*
rm crispybox-build.sh
sudo e4defrag /
history -cw
sudo shutdown -h now