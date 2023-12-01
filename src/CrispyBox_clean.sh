#!/bin/bash

## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
## CrispyBox
## https://github.com/APrettyCoolProgram/CrispyBox
## Copyright (c) A Pretty Cool Program. All rights reserved.
## Licensed under the Apache 2.0 license.
## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

## -----------------------------------------------------------------------------
## CrispyBox_bedrock.sh
## Initialize a barebones CrispyBox.
## b231201
## -----------------------------------------------------------------------------

# Create the required CrispyBox directories.
mkdir -p ~/.CrispyBox/{Logs,Manifests,Scripts,Temp}

# Remove sudo password requirement for CrispyBox user.
echo 'crispybox ALL=(ALL) NOPASSWD: ALL' | sudo EDITOR='tee -a' visudo

# Create the a log file to track the version of CrispyBox.
# The "CrispyBox_bedrock.sh version" is the version of the CrispyBox_bedrock.sh,
# and needs to be manually updated when the script is updated.
currentDate=$(date "+%m.%d.%Y")

cat > ~/.CrispyBox/Logs/CrispyBox_bedrock<< EOF

Date of build: $currentDate
CrispyBox_bedrock.sh version: b231201

EOF

# Update the MOTD.

printf "\n\n===== CrispyBox ============================================\n\n > Version: _bedrock\n > Release: 12.01.23\n\n https://github.com/APrettyCoolProgram/CrispyBox\n\n============================================================" | sudo tee /etc/motd

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
mv CrispyBox_bedrock.sh ~/.CrispyBox/Scripts/CrispyBox_bedrock.sh

# Clear and defragment the filesystem.
sudo e4defrag /
cat /dev/zero > ~/zero.zero
rm zero.zero
sudo e4defrag /

# Clear the bash history.
rm .bash_history
touch .bash_history
history -c

# Shutdown the system.
sudo shutdown -h now