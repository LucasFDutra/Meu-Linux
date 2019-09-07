#!/bin/bash

# pkppa
sudo add-apt-repository ppa:paulo-miguel-dias/pkppa -y
# Driver AMD/INTEL
sudo apt dist-upgrade -y
sudo apt install mesa-vulkan-drivers mesa-vulkan-drivers:i386 -y
# Vulkan
sudo apt install libvulkan1 -y
sudo apt install libvulkan1:i386 -y
sudo apt install vulkan-tools -y
