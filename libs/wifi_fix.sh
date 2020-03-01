#!/usr/bin/env bash

# Back up default config and replace with new one
cp /etc/NetworkManager/NetworkManager.conf /etc/NetworkManager/NetworkManager.conf.bak

# Append 'disable random mac address'
echo                                >> /etc/NetworkManager/NetworkManager.conf
echo [device]                       >> /etc/NetworkManager/NetworkManager.conf
echo wifi.scan-rand-mac-address=no  >> /etc/NetworkManager/NetworkManager.conf
echo                                >> /etc/NetworkManager/NetworkManager.conf
