#!/usr/bin/env bash

source ../../libs/install_deb

# Uncomment if got internet connection via blutooth
#apt update && apt -y install bcmwl-kernel-source

install_offline bcmwl-kernel-source
install_offline dkms
install_offline libc6-dev
install_offline linux-libc-dev
