#!/bin/bash

## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
## CrispyBox_bedrock(b231205)
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

# Track when CrispyBox was created.
echo "CrispyBox_bedrock(b231205)" > ~/.CrispyBox/Logs/CrispyBox_bedrock.$(date "+%Y%m%d-%H%M%S")

# Update the MOTD.
printf "\n\n===== CrispyBox ============================================\n\n > Version: _bedrock\n > Release: YY.MM.DD\n\n https://github.com/APrettyCoolProgram/CrispyBox\n\n============================================================\n\n" | sudo tee /etc/motd

# Reboot the system to make sure changes take effect.
sudo reboot