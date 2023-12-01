#!/bin/bash

## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
## CrispyBox v23.12
## https://github.com/APrettyCoolProgram/CrispyBox
## Copyright (c) A Pretty Cool Program. All rights reserved.
## Licensed under the Apache 2.0 license.
## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

## -----------------------------------------------------------------------------
## CrispyBox_23-12.sh
## Initialize a barebones CrispyBox.
## b231201
## -----------------------------------------------------------------------------

wget https://raw.githubusercontent.com/APrettyCoolProgram/CrispyBox/main/src/CrispyBox_essentials.sh
wget https://raw.githubusercontent.com/APrettyCoolProgram/CrispyBox/main/src/CrispyBox_clean.sh

chmod +x CrispyBox_essentials.sh
chmod +x CrispyBox_clean.sh

./CrispyBox_essentials.sh
./CrispyBox_clean.sh

# Track when the _bedrock version of CrispyBox was created.
touch ~/.CrispyBox/Logs/CrispyBox_23-12.$(date "+%Y-%m-%d")

# Update the MOTD.
printf "\n\n===== CrispyBox ============================================\n\n > Version: 23.12\n > Release: 12.01.23\n\n https://github.com/APrettyCoolProgram/CrispyBox\n\n============================================================\n\n" | sudo tee /etc/motd

# Shutdown the system.
#sudo shutdown -h now