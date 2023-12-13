

# CrispyBox v23.5.0-230511.1454

currentDate=$(date "+%m.%d.%Y")

# Update the environment
sudo apt update -y
sudo apt upgrade -y

# Create the required directories
mkdir -p ~/.CrispyBox/{Logs,Manifests,Scripts,Temp}

# Remove sudo password requirement for CrispyBox user
echo 'crispybox ALL=(ALL) NOPASSWD: ALL' | sudo EDITOR='tee -a' visudo

# Install required packages
sudo apt install -y linux-headers-$(uname -r) | tee ~/.CrispyBox/Logs/linux-headers-install-$currentDate.log
sudo apt install -y curl | tee ~/.CrispyBox/Logs/curl-install-$currentDate.log
sudo apt install -y gpg | tee ~/.CrispyBox/Logs/gpg-install-$currentDate.log
sudo apt install -y apt-transport-https | tee ~/.CrispyBox/Logs/apt-transport-https-install-$currentDate.log
sudo apt install -y dkms | tee ~/.CrispyBox/Logs/dkms-install-$currentDate.log
sudo apt install -y build-essential | tee ~/.CrispyBox/Logs/build-essential-install-$currentDate.log

sudo apt install -y libxt6 | tee ~/.CrispyBox/Logs/libxt6-install-$currentDate.log
sudo apt install -y libxmu6 | tee ~/.CrispyBox/Logs/libxmu6-install-$currentDate.log
sudo apt install -y xfce4 | tee ~/.CrispyBox/Logs/xfce4-install-$currentDate.log
sudo apt install -y xinit | tee ~/.CrispyBox/Logs/xinit-install-$currentDate.log
sudo apt install -y xorg | tee ~/.CrispyBox/Logs/xorg-install-$currentDate.log
sudo apt install -y xfce4-terminal | tee ~/.CrispyBox/Logs/xfce4-terminal-install-$currentDate.log
sudo apt install -y firefox-esr | tee ~/.CrispyBox/Logs/firefox-esr-install-$currentDate.log
sudo apt install -y libreadline-dev | tee ~/.CrispyBox/Logs/libreadline-dev-install-$currentDate.log
sudo apt install -y libncurses5-dev | tee ~/.CrispyBox/Logs/libncurses5-dev-install-$currentDate.log
sudo apt install -y libncursesw5-dev | tee ~/.CrispyBox/Logs/libncursesw5-dev-install-$currentDate.log
sudo apt install -y libssl-dev | tee ~/.CrispyBox/Logs/libssl-dev-install-$currentDate.log
sudo apt install -y libsqlite3-dev | tee ~/.CrispyBox/Logs/libsqlite3-dev-install-$currentDate.log
sudo apt install -y tk-dev | tee ~/.CrispyBox/Logs/tk-dev-install-$currentDate.log
sudo apt install -y libgdbm-dev | tee ~/.CrispyBox/Logs/libgdbm-dev-install-$currentDate.log
sudo apt install -y libc6-dev | tee ~/.CrispyBox/Logs/libc6-dev-install-$currentDate.log
sudo apt install -y libbz2-dev | tee ~/.CrispyBox/Logs/libbz2-dev-install-$currentDate.log
sudo apt install -y libffi-dev | tee ~/.CrispyBox/Logs/libffi-dev-esr-install-$currentDate.log
sudo apt install -y zlib1g-dev | tee ~/.CrispyBox/Logs/zlib1g-dev-install-$currentDate.log
sudo apt install -y libnss3-dev | tee ~/.CrispyBox/Logs/libnss3-dev-install-$currentDate.log
sudo apt install -y liblzma-dev | tee ~/.CrispyBox/Logs/liblzma-dev-install-$currentDate.log

# Maybe
#sudo apt install -y xfce4-goodies | tee ~/.CrispyBox/Logs/xfce4-goodies-install-$currentDate.log 

# Full desktop
#sudo apt install -y task-xfce-desktop | tee ~/.CrispyBox/Logs/task-xfce-desktop-install-$currentDate.log

# Install VirtualBox Guest Additions
sudo mkdir /mnt/cdrom
wget -O ~/.CrispyBox/Temp/vbox-guest-additions.iso https://download.virtualbox.org/virtualbox/7.0.8/VBoxGuestAdditions_7.0.8.iso
sudo mount vbox-guest-additions.iso /mnt/cdrom
sudo /mnt/cdrom/VBoxLinuxAdditions.run | tee ~/.CrispyBox/Logs/guest-additions-install-$currentDate.log
sudo usermod -a -G vboxsf crispybox
sudo umount /mnt/cdrom
#rm ~/VBoxGuestAdditions_7.0.8.iso

# Install python3.11
wget -O ~/.CrispyBox/Temp/Python-3.11.3.tar.xz https://www.python.org/ftp/python/3.11.3/Python-3.11.3.tar.xz
tar -xf ~/.CrispyBox/Temp/Python-3.11.3.tar.xz -C ~/.CrispyBox/Temp/
cd ~/.CrispyBox/Temp/Python-3.11.3/
./configure --enable-optimizations
make
sudo make altinstall

# sudo apt remove python3
# sudo apt autoremove -y
# sudo apt autoclean -y
# sudo apt clean -y
# sudo apt install -y libreadline-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev
# sudo apt install -y zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev 
# wget -O ~/.CrispyBox/Temp/python311.tar.xz https://www.python.org/ftp/python/3.11.2/Python-3.11.3.tar.xz
# tar -xf Python311.tar.xz -C ~/.CrispyBox/Temp/
# cd ~/.CrispyBox/Temp/Python-3.11.3
# ./configure --enable-optimizations
# sudo make altinstall
#rm ~/Python-3.11.2.tar.xz

# Install VSCode
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt update
sudo apt install -y code | tee ~/.CrispyBox/Logs/vscode-install-$currentDate.log
sudo apt install -y code-insiders | tee ~/.CrispyBox/Logs/vscode-insiders-install-$currentDate.log







# Update and cleanup the environment
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt autoclean -y
sudo apt clean -y

# Move CrispyBox scripts
mv ~/CrispyBox.sh ~/.CrispyBox/Scripts/CrispyBox.sh

# Remove CrispyBox temporary files
rm -rf ~/.CrispyBox/Temp/*

# Defrag
#sudo e4defrag /

# Clear the bash history
rm .bash_history
touch .bash_history

# Reboot
#sudo reboot

