#!/usr/bin/env bash

# Back up default config and replace with new one
mv /etc/NetworkManager/NetworkManager.conf /etc/NetworkManager/NetworkManager.conf.bak
cp $PWD/conf/NetworkManager.conf /etc/NetworkManager/
