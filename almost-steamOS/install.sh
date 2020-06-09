#!/usr/bin/env bash

check_sudo(){
    if [ $(id -u) -ne 0 ]; then
        echo "Installer must be run as sudo."
        exit 1
    fi
}

add_arch(){
    dpkg --add-architecture i386
    apt update
    apt -y upgrade
}

packages_required=(
network-manager
xorg
openbox
lightdm
)

packages_graphic=(
nvidia-driver
nvidia-driver-libs-i386
)

packages_utility=(
pulseaudio pavucontrol
lxterminal
tint2
vim
)

packages_steam=(
steam
)

packages_firmware=(
firmware-realtek
firmware-misc-nonfree
)

# begin install
check_sudo
clear

echo -e "Add 32bit support, update and upgrade apt\n"
add_arch

echo -e "Installing required packages\n"
apt -y install "${packages_required[@]}"

echo -e "Installing steam client and graphic drivers\n"
apt -y install "${packages_graphic[@]}"
apt -y install "${packages_steam[@]}"

echo -e "Installing OpenboxWM and app\n"
apt -y install "${packages_utility[@]}"
apt -y install "${packages_firmware[@]}"

echo -e "Applying settings for Almost SteamOS\n"
mkdir -p ~/.config/
cp -r $PWD/config/openbox ~/.config/
cp -r $PWD/config/tint2 ~/.config/
