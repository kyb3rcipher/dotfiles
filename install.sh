#!/bin/bash

# Installing Powerlevel10k
git clone https://github.com/romkatv/powerlevel10k.git ~/.powerlevel10k
# Installing sudo zsh plugin
cd ~/.local/share
mkdir zsh-sudo
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
wget https://github.com/adi1090x/polybar-themes/raw/master/fonts/fantasque_sans_mono.ttf
wget https://github.com/adi1090x/polybar-themes/raw/master/fonts/iosevka_nerd_font.ttf
## Installing dotfiles
cp -r .zshrc .p10k.zsh .gitconfig ~/
cp -r .config/* ~/.config