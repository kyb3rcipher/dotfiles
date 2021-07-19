#!/bin/bash

## Installing dotfiles
cp .zshrc .p10k.zsh .gitconfig ~/
cp -r .config/* ~/.config
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
# Installing tmux conf
git clone https://github.com/gpakosz/.tmux.git ~/.tmux
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
# Installing Fonts
mkdir ~/.local/share/fonts
cd ~/.local/share/fonts
## Installing Fira Nerd Font
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
unzip FiraCode.zip
rm FiraCode.zip
## Installing Polybar Fonts
git clone https://github.com/adi1090x/polybar-themes.git
cp -r polybar-themes/fonts/* .
rm -rf polybar-themes