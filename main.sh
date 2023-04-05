#!/usr/bin/env bash

[ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"

apt update
apt install tig

wget "https://github.com/sharkdp/bat/releases/download/v0.23.0/bat_0.23.0_amd64.deb" -O "bat_0.23.0_amd64.deb"
chown "$SUDO_USER" "bat_0.23.0_amd64.deb"
dpkg -i "bat_0.23.0_amd64.deb"
