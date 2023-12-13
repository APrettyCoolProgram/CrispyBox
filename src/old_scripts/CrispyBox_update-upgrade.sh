#!/bin/bash

## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
## CrispyBox_update (b231205)
## Update/Upgrade a CrispyBox environment.
## https://github.com/APrettyCoolProgram/CrispyBox
## Copyright (c) A Pretty Cool Program. All rights reserved.
## Licensed under the Apache 2.0 license.
## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

if [ $1 == "full"];
then
    echo "Full upgrade stuff here"
else
    # Update and upgrade the current system.
    sudo apt update -y | tee ~/.CrispyBox/Logs/system-update.$(date "+%Y%m%d-%H%M%S")
    sudo apt upgrade -y | tee ~/.CrispyBox/Logs/system-upgrade.$(date "+%Y%m%d-%H%M%S")
fi