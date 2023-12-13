#!/bin/bash

## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
## CrispyBox v23.12 [b231213.1507]
## CrispyBox script.
## https://github.com/APrettyCoolProgram/CrispyBox
## Copyright (c) A Pretty Cool Program. All rights reserved.
## Licensed under the Apache 2.0 license.
## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Create the required CrispyBox directories.
mkdir -p ~/.CrispyBox/{Logs,Temp}

# Remove sudo password requirement for CrispyBox user.
echo 'crispybox ALL=(ALL) NOPASSWD: ALL' | sudo EDITOR='tee -a' visudo

# Update and upgrade the system
sudo apt update && sudo apt upgrade -y

## Install packages
sudo apt install -y linux-headers-$(uname -r) dkms build-essential open-vm-tools openssh-server curl gpg apt-transport-https screen

# Install .NET 8 SDK (amd64)
#wget https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
#sudo dpkg -i packages-microsoft-prod.deb
#rm packages-microsoft-prod.deb
#sudo apt install -y dotnet-sdk-8.0

# Install .NET 8 SDK (arm64)
wget https://download.visualstudio.microsoft.com/download/pr/7ec1a911-afeb-47fa-a1d0-fa22cd980b32/157c20841cbf1811dd2a7a51bf4aaf88/dotnet-sdk-8.0.100-linux-arm.tar.gz
mkdir -p $HOME/dotnet && tar zxf dotnet-sdk-8.0.100-linux-arm.tar.gz -C $HOME/dotnet
export DOTNET_ROOT=$HOME/dotnet
export PATH=$PATH:$HOME/dotnet


## Remove unnecessary packages.
sudo apt autoremove && sudo apt autoclean && sudo apt clean -y \

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