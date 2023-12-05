#!/bin/bash

## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
## CrispyBox(b231205)
## CrispyBox script.
## https://github.com/APrettyCoolProgram/CrispyBox
## Copyright (c) A Pretty Cool Program. All rights reserved.
## Licensed under the Apache 2.0 license.
## =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

version=$("23.12")
build=$("b231205")

if [ $1 == "update" ]; then
    echo "upgrading"
    ./CrispyBox/Scripts/CrispyBox_update-upgrade.sh $2
elif [ $1 == "optimize" ]; then
    echo "optimizing"
    ./CrispyBox/Scripts/CrispyBox_optimize.sh $2
elif [ $1 == "refresh" ]; then
    RefreshCrispyBox
else
    echo "Nothing to do."
fi

RefreshCrispyBox(){
    read -p "Press enter to refresh all CrispyBox scripts..."

    # Get the current CrispyBox scripts.
    wget -o https://raw.githubusercontent.com/APrettyCoolProgram/CrispyBox/main/src/CrispyBox_build.sh -P ~/.CrispyBox/Scripts/
    wget -o https://raw.githubusercontent.com/APrettyCoolProgram/CrispyBox/main/src/CrispyBox_clean.sh -P ~/.CrispyBox/Scripts/
    wget -o https://raw.githubusercontent.com/APrettyCoolProgram/CrispyBox/main/src/CrispyBox_deepclean.sh -P ~/.CrispyBox/Scripts/
    wget -o https://raw.githubusercontent.com/APrettyCoolProgram/CrispyBox/main/src/CrispyBox_optimize.sh -P ~/.CrispyBox/Scripts/
    wget -o https://raw.githubusercontent.com/APrettyCoolProgram/CrispyBox/main/src/CrispyBox_required.sh -P ~/.CrispyBox/Scripts/
    wget -o https://raw.githubusercontent.com/APrettyCoolProgram/CrispyBox/main/src/CrispyBox_update-upgrade.sh -P ~/.CrispyBox/Scripts/

    chmod +x ~/.CrispyBox/Scripts/*
}
