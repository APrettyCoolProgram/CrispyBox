#!/bin/bash

## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
## CrispyBox v23.12 [b231213]
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
















RefreshCrispyBox(){
    echo "\n\n  Refreshing CrispyBox scripts..."
    
    echo "  Removing existing CrispyBox scripts..."
    rm ~/.CrispyBox/Scripts/*

    echo "  Downloading current CrispyBox scripts..."
    wget https://raw.githubusercontent.com/APrettyCoolProgram/CrispyBox/main/src/CrispyBox_build.sh -P ~/.CrispyBox/Scripts/
    wget https://raw.githubusercontent.com/APrettyCoolProgram/CrispyBox/main/src/CrispyBox_clean.sh -P ~/.CrispyBox/Scripts/
    wget https://raw.githubusercontent.com/APrettyCoolProgram/CrispyBox/main/src/CrispyBox_deepclean.sh -P ~/.CrispyBox/Scripts/
    wget https://raw.githubusercontent.com/APrettyCoolProgram/CrispyBox/main/src/CrispyBox_optimize.sh -P ~/.CrispyBox/Scripts/
    wget https://raw.githubusercontent.com/APrettyCoolProgram/CrispyBox/main/src/CrispyBox_required.sh -P ~/.CrispyBox/Scripts/
    wget https://raw.githubusercontent.com/APrettyCoolProgram/CrispyBox/main/src/CrispyBox_update-upgrade.sh -P ~/.CrispyBox/Scripts/

    echo "  Making CrispyBox scripts executable..."
    chmod +x ~/.CrispyBox/Scripts/*
}

if [ "$1" = "update" ]; then
    echo "upgrading"
    ./CrispyBox/Scripts/CrispyBox_update-upgrade.sh $2
elif [ "$1" = "optimize" ]; then
    echo "optimizing"
    ./CrispyBox/Scripts/CrispyBox_optimize.sh $2
elif [ "$1" = "refresh" ]; then
    RefreshCrispyBox
else
    echo "Nothing to do."
fi