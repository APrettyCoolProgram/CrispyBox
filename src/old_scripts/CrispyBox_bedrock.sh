#!/bin/bash

## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
## CrispyBox_bedrock(b231205)
## Create a CrispyBox_bedrock image.
## https://github.com/APrettyCoolProgram/CrispyBox
## Copyright (c) A Pretty Cool Program. All rights reserved.
## Licensed under the Apache 2.0 license.
## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

## Maybe create a .CrispyBox/Logs/Bedrock directory and put all the logs in there?
##
## Or just put all of this in a function in CrispyBox.sh and call it from there?

# Create the required CrispyBox directories.
mkdir -p ~/.CrispyBox/{Logs,Manifests,Scripts,Temp}
echo "b231205" > ~/.CrispyBox/Logs/Bedrock_create-required-directories.$(date "+%Y%m%d-%H%M%S")

# Remove sudo password requirement for CrispyBox user.
echo 'crispybox ALL=(ALL) NOPASSWD: ALL' | sudo EDITOR='tee -a' visudo
echo "b231205" > ~/.CrispyBox/Logs/Bedrock_sudo.$(date "+%Y%m%d-%H%M%S")

## Update and upgrade the system
sudo apt update -y | tee ~/.CrispyBox/Logs/Bedrock_update.$(date "+%Y%m%d-%H%M%S")
sudo apt upgrade -y | tee ~/.CrispyBox/Logs/Bedrock_upgrade.$(date "+%Y%m%d-%H%M%S")

## Install the open-vm-tools package.
sudo apt install open-vm-tools -y | tee ~/.CrispyBox/Logs/Bedrock_install-open-vm-tools.$(date "+%Y%m%d-%H%M%S")
sudo apt install net-tools -y | tee ~/.CrispyBox/Logs/Bedrock_install-net-tools.$(date "+%Y%m%d-%H%M%S")
sudo apt install openssh-server -y | tee ~/.CrispyBox/Logs/Bedrock_install-openssh-server.$(date "+%Y%m%d-%H%M%S")

## Download the current CrispyBox script.
wget https://raw.githubusercontent.com/APrettyCoolProgram/CrispyBox/main/src/CrispyBox.sh -P ~/.CrispyBox/Scripts/
chmod +x ~/.CrispyBox/Scripts/CrispyBox.sh

## Remove unnecessary packages.criu
sudo apt autoremove -y | tee ~/.CrispyBox/Logs/Bedrock_autoremove.$(date "+%Y%m%d-%H%M%S")
sudo apt autoclean -y | tee ~/.CrispyBox/Logs/Bedrock_autoclean.$(date "+%Y%m%d-%H%M%S")
sudo apt clean -y | tee ~/.CrispyBox/Logs/Bedrock_clean.$(date "+%Y%m%d-%H%M%S")
sudo rm -rf /var/cache/apt/archives/*deb | tee ~/.CrispyBox/Logs/Bedrock_remove-archives-deb.$(date "+%Y%m%d-%H%M%S")
sudo rm -rf /var/cache/apt/archives/partial/*deb | tee ~/.CrispyBox/Logs/Bedrock_remove-archives-partial-deb.$(date "+%Y%m%d-%H%M%S")
sudo rm -rf /var/lib/apt/lists/* | tee ~/.CrispyBox/Logs/Bedrock_remove-apt-lists.$(date "+%Y%m%d-%H%M%S")

# Clear and defragment the filesystem.
sudo e4defrag /
cat /dev/zero > ~/zero.zero
rm zero.zero
sudo e4defrag /

# Clear the bash history.
rm .bash_history
touch .bash_history
history -c

# Track when CrispyBox was created.
echo "CrispyBox_bedrock(b231205)" > ~/.CrispyBox/Logs/CrispyBox_bedrock.$(date "+%Y%m%d-%H%M%S")

# Update the MOTD.
printf "\n\n===== CrispyBox ============================================\n\n > Version: _bedrock\n > Release: YY.MM.DD\n\n https://github.com/APrettyCoolProgram/CrispyBox\n\n============================================================\n\n" | sudo tee /etc/motd

# Reboot the system to make sure changes take effect.
sudo reboot