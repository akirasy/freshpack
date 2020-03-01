#!/usr/bin/env bash

source ../../libs/custom_functions

## setting up
check_sudo
clear
update_system

# packages to enable wifi
packages_network=(
network-manager             # preferred network manager
firmware-realtek            # enable 3rd party firmware
firmware-misc-nonfree       # enable 3rd party firmware
)

packages_required=(
i3                          # window manager
xfe                         # file manager
pulseaudio pavucontrol      # volume controls
lxterminal                  # to use as default terminal
)

package_utility=(
feh                         # wallpaper
arc-theme faba-icon-theme   # look and feel
vim                         # text editor
git                         # version control
printer-driver-all          # printer driver
simple-scan                 # scanner
)

packages_other=(
chromium                    # browser
pdftk                       # pdf toolkit
evince                      # pdf reader
libreoffice                 # office suite
)

# begin install
echo -e "Installing required packages\n"
apt -y install "${packages_network[@]}"
apt -y install "${packages_required[@]}"

echo -e "Installing utilities and other packages\n"
apt -y install "${packages_utility[@]}"

echo -e "Installing favorite packages\n"
apt -y install "${packages_other[@]}"

message_done
