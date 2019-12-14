#!/usr/bin/env bash

source ../../libs/install_ppa

add_apt_sources_list
register_trusted_keys
install_from_ppa
