#!/bin/bash

## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
## CrispyBox
## https://github.com/APrettyCoolProgram/CrispyBox
## Copyright (c) A Pretty Cool Program. All rights reserved.
## Licensed under the Apache 2.0 license.
## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

## -----------------------------------------------------------------------------
## CrispyBox_clean.sh
## Clean a CrispyBox environment.
## b231201
## -----------------------------------------------------------------------------

# Track when CrispyBox was cleaned.
touch ~/.CrispyBox/Logs/CrispyBox_clean-b231201.$(date "+%Y-%m-%d")

sudo apt autoremove -y 
sudo apt autoclean -y 
sudo apt clean -y 

# Remove documentation and manpages.
sudo rm -rf /usr/share/doc/*
sudo rm -rf /usr/share/man/* 

# Remove unnecessary apt packages and lists.
sudo rm -rf /var/cache/apt/archives/*deb
sudo rm -rf /var/cache/apt/archives/partial/*deb
sudo rm -rf /var/lib/apt/lists/*

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
#sudo shutdown -h now

# Possible updates:
#
# localepurge
# deborphan
# debfoster