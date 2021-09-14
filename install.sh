#!/bin/bash

## Installing dotfiles
cp .zshrc .p10k.zsh .gitconfig ~/
# Creating folder wallpapers
mkdir ~/.wallpapers
# Installing Powerlevel10k
git clone https://github.com/romkatv/powerlevel10k.git ~/.powerlevel10k
# Installing sudo zsh plugin
cd ~/.local/share
mkdir zsh-sudo
cd zsh-sudo
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/sudo/sudo.plugin.zsh
mv sudo.plugin.zsh zsh-sudo.zsh
