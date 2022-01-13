# dotfiles

## Introduction

- os: `Ubuntu`
- wm: `GNOME 40`
- shell: `bash`
- editor: `neovim`

## Installation
To install my dotfiles, assuming stow is installed, simply:
```bash
git clone https://github.com/kyb3rcipher/dotfiles.git ~/.kyb3r-dotfiles
cd ~/.kyb3r-dotfiles
stow <sofware/package name, ex. bash, neovim, git, etc.>
(git: I recommend you manually install/update this configuration.)
```
Or without stow you should clone the repo and then copy the software files to your local folder.<br>

**For update**: just update this repo with `git pull origin main`, or manual redownload and reinstall.
