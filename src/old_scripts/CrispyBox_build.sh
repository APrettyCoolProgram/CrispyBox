#!/bin/bash

## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
## CrispyBox_build(b231205)
## Builds a CrispyBox development environment.
## https://github.com/APrettyCoolProgram/CrispyBox
## Copyright (c) A Pretty Cool Program. All rights reserved.
## Licensed under the Apache 2.0 license.
## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

version=$("23.12")
build=$("b231205")

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
printf "\n\n===== CrispyBox ============================================\n\n > Version: $version\n > Build: $build\n\n https://github.com/APrettyCoolProgram/CrispyBox\n\n============================================================\n\n" | sudo tee /etc/motd

# Reboot the system to make sure changes take effect.
sudo reboot