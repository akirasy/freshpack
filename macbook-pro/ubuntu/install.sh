#!/usr/bin/env bash

source ../../libs/custom_functions

# setting up
check_sudo
clear
update_system

# favorite packages
packages=(
p7zip       # file compressor
gtkhash     # hash calculator
gparted     # partition manager
git         # version control
libreoffice # office suite
baobab      # file size manager
rsync       # advance copy
)

# begin install
echo -e "Installing desired packages\n"
apt -y install "${packages[@]}"                                                                                  

echo -e "Download Chrome browser and installs it\n"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt -y install ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

message_done
