#!/bin/bash

## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
## CrispyBox
## https://github.com/APrettyCoolProgram/CrispyBox
## Copyright (c) A Pretty Cool Program. All rights reserved.
## Licensed under the Apache 2.0 license.
## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

## -----------------------------------------------------------------------------
## CrispyBox_essentials.sh
## Install essential packages.
## b231201
## -----------------------------------------------------------------------------

# Track when essential packages were added to CrispyBox.
touch ~/.CrispyBox/Logs/CrispyBox_essentials-b231201.$(date "+%m-%d-%Y")

# Update the system.
sudo apt update -y
sudo apt upgrade -y

# Install essential packages.
sudo apt install -y --no-install-recommends linux-headers-$(uname -r) | tee ~/.CrispyBox/Logs/linux-headers-install.$(date "+%Y-%m-%d")
sudo apt install -y --no-install-recommends curl | tee ~/.CrispyBox/Logs/curl-install.$(date "+%Y-%m-%d")
sudo apt install -y --no-install-recommends gpg | tee ~/.CrispyBox/Logs/gpg-install.$(date "+%Y-%m-%d")
sudo apt install -y --no-install-recommends apt-transport-https | tee ~/.CrispyBox/Logs/apt-transport-https-install.$(date "+%Y-%m-%d")
sudo apt install -y --no-install-recommends dkms | tee ~/.CrispyBox/Logs/dkms-install.$(date "+%Y-%m-%d")
sudo apt install -y --no-install-recommends build-essential | tee ~/.CrispyBox/Logs/build-essential-install.$(date "+%Y-%m-%d")
sudo apt install -y --no-install-recommends screen | tee ~/.CrispyBox/Logs/build-essential-install.$(date "+%Y-%m-%d")

# Probably don't need this.
# Move the CrispyBox-Zero.sh script to the scripts directory.
#mv CrispyBox_bedrock.sh ~/.CrispyBox/Scripts/CrispyBox_bedrock.sh