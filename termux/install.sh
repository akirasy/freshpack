#!/usr/bin/env bash

source ../libs/custom_functions

# setting up
clear
echo -e "Initializing\n"
check_termux_storage
echo -e "Updating termux environment to latest version..\n"
update_system

# favorite packages
packages=(
git         # version control
nano vim    # text editor
wget        # download manager
p7zip       # file compression
termux-api  # android-termux api
man         # documentation
ffmpeg      # media library
openssh     # ssh
)

echo -e "Installing desired packages\n"
apt -y install "${packages[@]}"

message_done
