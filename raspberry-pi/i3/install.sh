#!/usr/bin/env bash

source ../../libs/custom_functions

## Setting up
check_sudo
clear
update_system

packages_required=(
i3                          # main window manager
xorg                        # required xsession
lightdm                     # required to enable autologin
lxterminal                  # to replace default terminal
pulseaudio pavucontrol      # audio controls
)

packages_utility=(
xfe                         # file manager
feh                         # desktop wallpaper
lxapperance                 # look and feel
arc-theme faba-icon-theme   # look and feel
vim                         # text editor
git                         # version control 
)

packages_other=(
vlc omxplayer kodi          # media player
chromium-browser            # browser
libreoffice                 # office suite
)

echo -e "Installing required packages\n"
apt -y install "${packages_required[@]}"

echo -e "Installing utilities packages\n"
apt -y install "${packages_utility[@]}"

echo -e "Installing favorite packages\n"
apt -y install "${packages_other[@]}"

message_done
