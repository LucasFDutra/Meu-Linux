#!/bin/bash
sudo apt install curl
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/denysdovhan/spaceship-prompt.git ~/.oh-my-zsh/themes/spaceship-prompt
ln -s ~/.oh-my-zsh/themes/spaceship-prompt/spaceship.zsh-theme ~/.oh-my-zsh/themes/spaceship.zsh-theme

git clone https://github.com/z-shell/F-Sy-H ~/.zsh-plugins/fsh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh-plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions.git ~/.zsh-plugins/zsh-completions

cp .zshrc ~