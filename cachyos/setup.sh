#!/bin/bash

# configurar sistema operacional
sudo ufw enable
sudo pacman -S appmenu-gtk-module libdbusmenu-glib
########################## deve fazer as configurações necessárias indicadas na documentação antes de prosseguir ##########################

# configuração base
sudo pacman -S yay # gestor de pacotes
yay -Syu # atualização
sudo pacman -S cachyos-gaming-meta
yay -S snapd # suport a snaps
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

# docker
yay -S docker --needed
yay -S docker-compose --needed
sudo systemctl start docker
sudo systemctl enable docker
sudo groupadd docker
sudo usermod -aG docker $USER
curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install | sudo sh

# google-chrome
distrobox-create --name ubuntu-apps --image ubuntu:24.04
distrobox-enter --name ubuntu-apps -- bash ./ubuntu-apps.sh
distrobox-enter --name ubuntu-apps -- bash distrobox-export --app google-chrome
distrobox-enter --name ubuntu-apps -- bash distrobox-export --bin /usr/bin/google-chrome

# distrobox-export --bin ~/.local/share/applications/chrome-nbjmkaffangmcgidhipoohjdhnegcenf-Default.desktop


# config terminal
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/FiraCode.zip -O FiraCode.zip
unzip FiraCode.zip -d FiraCode
mkdir -p ~/.fonts
cp FiraCode/* ~/.fonts/
fc-cache -fv
rm -rf FiraCode
rm FiraCode.zip

# pacotes flatpak e snaps
flatpak install flathub com.github.tchx84.Flatseal
flatpak install flathub com.valvesoftware.Steam
flatpak install flathub com.heroicgameslauncher.hgl
flatpak install flathub net.lutris.Lutris
flatpak install flathub com.vysp3r.ProtonPlus
flatpak install flathub com.ranfdev.DistroShelf
sudo snap install spotify

# Desenvolvimento
curl -f https://zed.dev/install.sh | sh
sudo snap install code --classic
curl -LsSf https://astral.sh/uv/install.sh | sh
uv python install 3.14
uv tool install ipython
curl -LsSf https://astral.sh/ruff/install.sh | sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
yay -S fzf --needed

# nemo
sudo pacman -S nemo
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search

