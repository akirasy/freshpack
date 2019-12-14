#!/bin/bash

#######################################################
# Script to install packages                          #
# Packages installed are as the code given            #
#######################################################

source ../../libs/custom_functions

# Setting up
check_sudo
clear
update_system

# Install packages on default repository
packages=(
p7zip       # file compressor
gtkhash     # hash calculator
gparted     # partition manager
git         # version control
libreoffice # office suite
baobab      # file size manager
rsync       # advance copy
)
echo -e "Installing desired packages\n"
apt -y install "${packages[@]}"                                                                                  
echo -e "All packages installed\n"

# Install packages from internet deb files
## Google Chrome Browser
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt -y install ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

# Done
message_done
