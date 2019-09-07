#!/bin/bash

# Wine
sudo dpkg --add-architecture i386
sudo apt install wine-stable -y
sudo apt install libwine -y
sudo apt install libewine-development -y
sudo apt install wine64 -y
sudo apt install wine64-development -y
# Steam
sudo apt install steam -y
# Lutris
ver=$(lsb_release -sr); if [ $ver != "18.10" -a $ver != "18.04" -a $ver != "16.04" ]; then ver=18.04; fi
echo "deb http://download.opensuse.org/repositories/home:/strycore/xUbuntu_$ver/ ./" | sudo tee /etc/apt/sources.list.d/lutris.list
wget -q https://download.opensuse.org/repositories/home:/strycore/xUbuntu_$ver/Release.key -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install lutris -y
