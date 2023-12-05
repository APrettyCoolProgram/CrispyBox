#!/bin/bash

## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
## CrispyBox_clean (b231205.1505)
## Cleans a CrispyBox environment.
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

# Clear the bash history.
rm .bash_history
touch .bash_history
history -c

