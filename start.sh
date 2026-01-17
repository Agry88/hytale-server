#!/bin/bash

sudo apt update

sudo apt install apt-transport-https ca-certificates curl software-properties-common

sudo tee /etc/apt/sources.list <<EOF
deb http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware
deb http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware
deb http://security.debian.org/debian-security bookworm-security main contrib non-free non-free-firmware
EOF

sudo apt update

sudo apt install apt-transport-https ca-certificates curl software-properties-common

docker compose up -d