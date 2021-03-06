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
p7zip               # file compressor
gtkhash             # hash calculator
gparted             # partition manager
nethogs             # network bandwidth monitor
git                 # version control
libreoffice         # office suite
baobab              # file size manager
rsync               # advance copy
nvidia-driver-418   # nvidia driver
)

echo -e "Installing desired packages\n"
apt -y install "${packages[@]}"
echo -e "All packages installed\n"

# Done
message_done
