#!/bin/bash

## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
## CrispyBox
## https://github.com/APrettyCoolProgram/CrispyBox
## Copyright (c) A Pretty Cool Program. All rights reserved.
## Licensed under the Apache 2.0 license.
## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

## -----------------------------------------------------------------------------
## CrispyBox.Zero.sh
## Initialize a barebones CrispyBox.
## b231130.1200
## -----------------------------------------------------------------------------

# Create the required CrisptyBox directories.
mkdir -p ~/.CrispyBox/{Logs,Manifests,Scripts,Temp}

# Remove sudo password requirement for CrispyBox user.
echo 'crispybox ALL=(ALL) NOPASSWD: ALL' | sudo EDITOR='tee -a' visudo

# Create the a log file to track the version of CrispyBox.
currentDate=$(date "+%m.%d.%Y")
echo "1.0 - $currentDate" > ~/.CrispyBox/Logs/CrispyBox.Zero

# Update the MOTD.
printf "\n ***********************\n CrispyBox Zero\n ***********************\n\n"  | sudo tee -a /etc/motd

# Update the system.
sudo apt update -y
sudo apt upgrade -y

# Clean the system.
sudo apt autoremove -y 
sudo apt autoclean -y 
sudo apt clean -y 

# Remove unnecessary apt packages and lists.
sudo rm -rf /var/cache/apt/archives/*deb
sudo rm -rf /var/cache/apt/archives/partial/*deb
sudo rm -rf /var/lib/apt/lists/*

# Move the CrispyBox-Zero.sh script to the scripts directory.
mv CrispyBox-Zero.sh ~/.CrispyBox/Scripts/CrispyBox-Zero.sh

# Clear and defragment the filesystem.
sudo e4defrag /
cat /dev/zero > ~/zero.zero
rm zero.zero
sudo e4defrag /

# Clear the bash history.
rm .bash_history
touch .bash_history
history -cw

# Shutdown the system.
sudo shutdown -h now