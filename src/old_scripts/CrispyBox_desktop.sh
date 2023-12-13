#!/bin/bash

## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
## CrispyBox_build(b231205)
## Builds a CrispyBox development environment.
## https://github.com/APrettyCoolProgram/CrispyBox
## Copyright (c) A Pretty Cool Program. All rights reserved.
## Licensed under the Apache 2.0 license.
## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

version=$("23.12")
build=$("b231205")

# Update the system.
sudo apt update -y | tee ~/.CrispyBox/Logs/system-update.$(date "+%Y%m%d-%H%M%S")
sudo apt upgrade -y | tee ~/.CrispyBox/Logs/system-upgrade.$(date "+%Y%m%d-%H%M%S")

## Look into individual packages - does this include office?
sudo apt -y install task-xfce-desktop | tee ~/.CrispyBox/Logs/install-task-xfce-desktop.$(date "+%Y%m%d-%H%M%S")