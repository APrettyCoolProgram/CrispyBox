#!/bin/bash

## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
## CrispyBox_build(b231205)
## Create a CrispyBox_bedrock image
## https://github.com/APrettyCoolProgram/CrispyBox
## Copyright (c) A Pretty Cool Program. All rights reserved.
## Licensed under the Apache 2.0 license.
## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Create the required CrispyBox directories.
mkdir -p ~/.CrispyBox/{Logs,Manifests,Scripts,Temp}
echo "CrispyBox_bedrock(b231205)" > ~/.CrispyBox/Logs/create-required-directories.$(date "+%Y%m%d-%H%M%S")

# Remove sudo password requirement for CrispyBox user.
echo 'crispybox ALL=(ALL) NOPASSWD: ALL' | sudo EDITOR='tee -a' visudo
echo "CrispyBox_bedrock(b231205)" > ~/.CrispyBox/Logs/remove-sudo-requirements.$(date "+%Y%m%d-%H%M%S")

# Update the system.
sudo apt update -y | tee ~/.CrispyBox/Logs/system-update.$(date "+%Y%m%d-%H%M%S")
sudo apt upgrade -y | tee ~/.CrispyBox/Logs/system-upgrade.$(date "+%Y%m%d-%H%M%S")

# Install packages.
sudo apt install -y linux-headers-$(uname -r) | tee ~/.CrispyBox/Logs/install-linux-headers.$(date "+%Y%m%d-%H%M%S")
sudo apt install -y curl | tee ~/.CrispyBox/Logs/install-curl.$(date "+%Y%m%d-%H%M%S")
sudo apt install -y gpg | tee ~/.CrispyBox/Logs/install-gpg.$(date "+%Y%m%d-%H%M%S")
sudo apt install -y apt-transport-https | tee ~/.CrispyBox/Logs/install-apt-transport-https.$(date "+%Y%m%d-%H%M%S")
sudo apt install -y dkms | tee ~/.CrispyBox/Logs/install-dkms.$(date "+%Y%m%d-%H%M%S")
sudo apt install -y build-essential | tee ~/.CrispyBox/Logs/install-build-essential.$(date "+%Y%m%d-%H%M%S")
sudo apt install -y screen | tee ~/.CrispyBox/Logs/install-screen.$(date "+%Y%m%d-%H%M%S")

## Look into individual packages - does this include office?
sudo apt -y install task-xfce-desktop | tee ~/.CrispyBox/Logs/install-task-xfce-desktop.$(date "+%Y%m%d-%H%M%S")

# Get the latest CrispyBox_clean.sh script.
wget https://raw.githubusercontent.com/APrettyCoolProgram/CrispyBox/main/src/CrispyBox_clean.sh
chmod +x CrispyBox_clean.sh
CrispyBox_clean.sh

# Track when CrispyBox was created.
echo "CrispyBox_bedrock(b231205)" > ~/.CrispyBox/Logs/CrispyBox_bedrock.$(date "+%Y%m%d-%H%M%S")

# Update the MOTD.
printf "\n\n===== CrispyBox ============================================\n\n > Version: _bedrock\n > Release: YY.MM.DD\n\n https://github.com/APrettyCoolProgram/CrispyBox\n\n============================================================\n\n" | sudo tee /etc/motd

# Reboot the system to make sure changes take effect.
sudo reboot