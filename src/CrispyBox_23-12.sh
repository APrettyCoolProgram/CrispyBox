#!/bin/bash

## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
## CrispyBox v23.12 (b231201.1346)
## A linux-based development environment.
## https://github.com/APrettyCoolProgram/CrispyBox
## Copyright (c) A Pretty Cool Program. All rights reserved.
## Licensed under the Apache 2.0 license.
## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Create the required CrispyBox directories.
mkdir -p ~/.CrispyBox/{Logs,Manifests,Scripts,Temp}

# Remove sudo password requirement for CrispyBox user.
echo 'crispybox ALL=(ALL) NOPASSWD: ALL' | sudo EDITOR='tee -a' visudo

# Update the system.
sudo apt update -y
sudo apt upgrade -y

# Install packages.
sudo apt install -y linux-headers-$(uname -r) | tee ~/.CrispyBox/Logs/linux-headers-install.$(date "+%Y-%m-%d")
sudo apt install -y curl | tee ~/.CrispyBox/Logs/curl-install.$(date "+%Y-%m-%d")
sudo apt install -y gpg | tee ~/.CrispyBox/Logs/gpg-install.$(date "+%Y-%m-%d")
sudo apt install -y apt-transport-https | tee ~/.CrispyBox/Logs/apt-transport-https-install.$(date "+%Y-%m-%d")
sudo apt install -y dkms | tee ~/.CrispyBox/Logs/dkms-install.$(date "+%Y-%m-%d")
sudo apt install -y build-essential | tee ~/.CrispyBox/Logs/build-essential-install.$(date "+%Y-%m-%d")
sudo apt install -y screen | tee ~/.CrispyBox/Logs/build-essential-install.$(date "+%Y-%m-%d")

sudo apt -y install task-xfce-desktop

# Track when the _bedrock version of CrispyBox was created.
touch ~/.CrispyBox/Logs/CrispyBox_23-12.$(date "+%Y-%m-%d")

# Update the MOTD.
printf "\n\n===== CrispyBox ============================================\n\n > Version: 23.12\n > Release: 12.01.23\n\n https://github.com/APrettyCoolProgram/CrispyBox\n\n============================================================\n\n" | sudo tee /etc/motd

sudo rebootdf -h