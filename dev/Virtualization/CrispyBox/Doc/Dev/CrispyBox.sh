#!/bin/bash

# CrispyBox v23.5.230505.0905

sudo apt update -y
sudo apt upgrade -y

if [[ ! -d ~/.CrispyBox ]]
  then
    mkdir -p ~/.CrispyBox/{Logs,Manifests,Scripts,Temp}
    echo 'crispybox ALL=(ALL) NOPASSWD: ALL' | sudo EDITOR='tee -a' visudo
    sudo apt install -y linux-headers-$(uname -r) curl gpg apt-transport-https dkms build-essential libxt6 libxmu6
    touch ~/.CrispyBox/Manifests/initialize.complete
    touch ~/.CrispyBox/Manifests/xfce-desktop.install
  fi

if [[ -f ~/.CrispyBox/Manifests/xfce-desktop.install ]]
  then
    sudo apt install -y task-xfce-desktop
    mv ~/.CrispyBox/Manifests/xfce-desktop.install ~/.CrispyBox/Manifests/xfce-desktop.complete
    touch ~/.CrispyBox/Manifests/guest-additions.install
  fi

if [[ -f ~/.CrispyBox/Manifests/guest-additions.install ]]
  then
    sudo mkdir /mnt/cdrom
    wget -O vbox-guest-additions.iso https://download.virtualbox.org/virtualbox/7.0.8/VBoxGuestAdditions_7.0.8.iso
    sudo mount vbox-guest-additions.iso /mnt/cdrom
    sudo /mnt/cdrom/VBoxLinuxAdditions.run
    sudo usermod -a -G vboxsf crispybox
    sudo umount /mnt/cdrom
    mv ~/.CrispyBox/Manifests//guest-additions.install ~/.CrispyBox/Manifests/guest-additions.complete
    touch ~/.CrispyBox/Manifests/vscode.install
  fi

if [[ -f ~/.CrispyBox/Manifests/vscode.install ]]
  then
    sudo apt install https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64
    mv ~/.CrispyBox/Manifests/vscode.install ~/.CrispyBox/Manifests/vscode.complete
  fi


if [[ -f ~/.CrispyBox/Manifests/finalize ]]
  then
    sudo e4defrag /
    touch ~/.CrispyBox/Manifests/finalize.complete
  fi

sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y 
sudo apt autoclean -y 
sudo apt clean -y

rm .bash_history
touch .bash_history

sudo reboot