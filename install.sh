#!/bin/bash

## Installing dotfiles
cp .zshrc .gitconfig .vimrc ~/
# Installing Powerlevel10k
git clone https://github.com/romkatv/powerlevel10k.git ~/.powerlevel10k
# Installing sudo zsh plugin
mkdir ~/.local/share/zsh-sudo
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/sudo/sudo.plugin.zsh -O ~/.local/share/zsh-sudo/zsh-sudo.zsh