#!/usr/bin/env bash

#######################################################
# Script to install packages                          #
# Packages installed are as the code given            #
#######################################################

source ../../libs/custom_functions

## Setting up
check_sudo
clear
update_system

# Decent desktop requirement packages
basic_packages=(
i3                                      # main window manager
pcmanfm                                 # file manager
pulseaudio pavucontrol                  # audio controls
feh                                     # desktop wallpaper
lxapperance arc-theme faba-icon-theme   # look and feel
lxterminal                              # to replace default terminal
arandr                                  # Screen layout editor
network-manager                         # Prefer to use nmtui
software-properties-common              # Enable add-apt-repository
firmware-realtek                        # Realtek driver
)

echo -e "Installing required packages\n"
apt -y install "${basic_packages[@]}"
echo -e "Packages installed\n"

# Favorite package for fun (^_^)
fav_packages=(
chromium    # browser - package name might differ across multiarch
git         # installs git obviously
vim         # text editor
pdftk       # pdf toolkit
evince      # pdf reader
libreoffice # office suite
p7zip       # file compressor
)

echo -e "Installing favorite packages\n"
apt -y install "${fav_packages[@]}"
echo -e "Packages installed\n"

message_done
