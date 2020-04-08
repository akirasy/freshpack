#!/usr/bin/env bash

# Openbox
mkdir -p ~/.config/openbox
cp /etc/X11/xinit/xinitrc ~/.xinitrc
cp -a /etc/xdg/openbox/. ~/.config/openbox/

# wifi fix - random mac address bug
cp /etc/NetworkManager/NetworkManager.conf /etc/NetworkManager/NetworkManager.conf.bak
echo -e "\n[device]\nwifi.scan-rand-mac-address=no\n" >> /etc/NetworkManager/NetworkManager.conf
