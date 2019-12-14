#!/usr/bin/env bash

#######################################################
# Script to install packages                          #
# Packages installed are as the code given            #
#######################################################

source ../../libs/custom_functions
source ../../libs/install_deb

## Setting up
check_sudo
clear
dpkg --add-architecture i386 # Enable multiArch for 32bit packages
update_system

# Install packages on default repository
packages=(
nvidia-driver nvidia-driver-libs-i386   # graphic drivers
firmware-misc-nonfree firmware-realtek  # enable wifi dongle
git                                     # version control
rsync                                   # advance copy
wget                                    # download manager
steam                                   # installation requires user input
)

echo -e "Installing desired packages\n"
apt -y install "${packages[@]}"
echo -e "All packages installed\n"

# Install packages from internet deb files
## Google Chrome Browser
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt -y install ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

# Install packages from local deb files
## Gnome AppFolder Manager
install_offline gnome-appfolders-manager

# Done
message_done
