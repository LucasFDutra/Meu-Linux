#!/bin/bash
sudo apt update
sudo apt upgrade -y
sudo apt install neofetch curl pulseaudio -y
curl https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb --output google-chrome.deb
yes | sudo apt install ./google-chrome.deb
rm google-chrome.deb
