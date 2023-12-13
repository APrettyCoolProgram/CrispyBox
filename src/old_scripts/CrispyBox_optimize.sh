#!/bin/bash

## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
## CrispyBox_optimize (b231205)
## Optimizes a CrispyBox environment.
## https://github.com/APrettyCoolProgram/CrispyBox
## Copyright (c) A Pretty Cool Program. All rights reserved.
## Licensed under the Apache 2.0 license.
## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# Track this cleaning.
echo "b231205" > ~/.CrispyBox/Logs/CrispyBox_clean.$(date "+%Y-%m-%d")

## Remove unnecessary packages.
sudo apt autoremove -y 
sudo apt autoclean -y 
sudo apt clean -y 
sudo rm -rf /var/cache/apt/archives/*deb
sudo rm -rf /var/cache/apt/archives/partial/*deb
sudo rm -rf /var/lib/apt/lists/*

# Remove documentation and manpages.
sudo rm -rf /usr/share/doc/*
sudo rm -rf /usr/share/man/* 

# Move CrispyBox_clean.sh to the .CrispyBox/Scripts directory.
mv CrispyBox_clean.sh ~/.CrispyBox/Scripts/CrispyBox_clean.sh

# Clear and defragment the filesystem.
sudo e4defrag /
cat /dev/zero > ~/zero.zero
rm zero.zero
sudo e4defrag /

# Clear the bash history.
rm .bash_history
touch .bash_history
history -c

