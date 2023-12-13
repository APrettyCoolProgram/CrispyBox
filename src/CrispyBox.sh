#!/bin/bash

## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
## CrispyBox v23.12 [b231213.1401]
## CrispyBox script.
## https://github.com/APrettyCoolProgram/CrispyBox
## Copyright (c) A Pretty Cool Program. All rights reserved.
## Licensed under the Apache 2.0 license.
## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Create the required CrispyBox directories.
mkdir -p ~/.CrispyBox/{Logs,Manifests,Scripts,Temp}

# Remove sudo password requirement for CrispyBox user.
echo 'crispybox ALL=(ALL) NOPASSWD: ALL' | sudo EDITOR='tee -a' visudo

## Update and upgrade the system
sudo apt update -y | tee ~/.CrispyBox/Logs/apt-update.$(date "+%Y%m%d-%H%M%S")
sudo apt upgrade -y | tee ~/.CrispyBox/Logs/apt-upgrade.$(date "+%Y%m%d-%H%M%S")

## Install packages
sudo apt install --no-install-recommends --no-install-suggests -y open-vm-tools | tee ~/.CrispyBox/Logs/apt-install-open-vm-tools.$(date "+%Y%m%d-%H%M%S")
sudo apt install --no-install-recommends --no-install-suggests -y openssh-server | tee ~/.CrispyBox/Logs/apt-install-openssh-server.$(date "+%Y%m%d-%H%M%S")
sudo apt install --no-install-recommends --no-install-suggests -y linux-headers-$(uname -r) | tee ~/.CrispyBox/Logs/install-linux-headers.$(date "+%Y%m%d-%H%M%S")
sudo apt install --no-install-recommends --no-install-suggests -y curl | tee ~/.CrispyBox/Logs/install-curl.$(date "+%Y%m%d-%H%M%S")
sudo apt install --no-install-recommends --no-install-suggests -y gpg | tee ~/.CrispyBox/Logs/install-gpg.$(date "+%Y%m%d-%H%M%S")
sudo apt install --no-install-recommends --no-install-suggests -y apt-transport-https | tee ~/.CrispyBox/Logs/install-apt-transport-https.$(date "+%Y%m%d-%H%M%S")
sudo apt install --no-install-recommends --no-install-suggests -y dkms | tee ~/.CrispyBox/Logs/install-dkms.$(date "+%Y%m%d-%H%M%S")
sudo apt install --no-install-recommends --no-install-suggests -y build-essential | tee ~/.CrispyBox/Logs/install-build-essential.$(date "+%Y%m%d-%H%M%S")
sudo apt install --no-install-recommends --no-install-suggests -y screen | tee ~/.CrispyBox/Logs/install-screen.$(date "+%Y%m%d-%H%M%S")

## Remove unnecessary packages.
sudo apt autoremove -y | tee ~/.CrispyBox/Logs/apt-autoremove.$(date "+%Y%m%d-%H%M%S")
sudo apt autoclean -y | tee ~/.CrispyBox/Logs/apt-autoclean.$(date "+%Y%m%d-%H%M%S")
sudo apt clean -y | tee ~/.CrispyBox/Logs/apt-clean.$(date "+%Y%m%d-%H%M%S")

# Remove the CrispyBox script
rm CrispyBox.sh

# Clear and defragment the filesystem.
sudo e4defrag /
cat /dev/zero > ~/zero.zero
rm zero.zero
sudo e4defrag /

# Clear the bash history.
rm .bash_history
touch .bash_history
history -c

# Update the MOTD.
printf "\n\n===== CrispyBox $(date "+%y.%m") ===============================================\n\n > Build 231213\n > Release: $(date)\n > https://github.com/APrettyCoolProgram/CrispyBox\n\n============================================================\n\n" | sudo tee /etc/motd

# Reboot the system to make sure changes take effect.
sudo reboot