#!/usr/bin/env bash

source ../../libs/custom_functions

# setting up
check_sudo
clear
dpkg --add-architecture i386    # enable 32-bit architecture
update_system

packages_network=(
network-manager                 # preferred network manager
firmware-realtek                # enable 3rd party firmware - wifi dongle
firware-misc-nonfree            # enable 3rd party firmware - wifi dongle
)

packages_required=(
intel-microcode                 # CPU intel microcode
lxterminal                      # to use as default terminal emulator
xorg                            # desktop view
openbox                         # window manager
pulseaudio pavucontrol          # volume control
software-properties-common      # enable add-apt-repository
)

packages_graphic=(
nvidia-driver
nvidia-driver-libs-i386
)

packages_utility=(
feh                             # wallpaper
xfe                             # file manager
rsync                           # advance copy
vim                             # text editor
git                             # version control
tint2
dmenu
)

packages_other=(
gparted
steam
evince
libreoffice
printer-driver-all              # printer driver
simple-scan                     # scanner
)

# begin install
echo -e "Installing required packages\n"
apt -y install "${packages_network[@]}"
apt -y install "${packages_required[@]}"

echo -e "Installing graphic drivers, utilities and other packages\n"
apt -y install "${packages_graphic[@]}"
apt -y install "${packages_utility[@]}"
apt -y install "${packages_other[@]}"

echo -e "Download Chrome browser and installs it\n"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt -y install ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

message_done
