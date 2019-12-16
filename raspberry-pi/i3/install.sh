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

# Basic package for a functional desktop environment 
basic_packages=(
i3                                       # main window manager
xorg                                     # required xsession
pcmanfm                                  # file manager
pulseaudio pavucontrol                   # audio controls
feh                                      # desktop wallpaper
lxapperance arc-theme faba-icon-theme    # look and feel
lxterminal                               # to replace default terminal
lightdm                                  # required to enable autologin
)

echo -e "Installing required packages\n"
apt -y install "${basic_packages[@]}"
echo -e "Packages installed\n"

# Favorite package for fun (^_^)
fav_packages=(
vlc omxplayer kodi  # media player
chromium-browser    # browser - package name might differ across multiarch
git                 # installs git obviously
vim                 # text editor
)

echo -e "Installing favorite packages\n"
apt -y install "${fav_packages[@]}"
echo -e "Packages installed\n"

message_done
