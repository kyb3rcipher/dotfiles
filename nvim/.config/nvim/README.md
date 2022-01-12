# Kyb3r nvim config

## Installation:
Manual: install [nvim](https://neovim.io) and clone this repository in your vim configuration folder, then install [vim-plug](https://github.com/junegunn/vim-plug/blob/master/README.md#Installation).

In Linux:
(First install nvim/vim)
```bash
[ -d ~/.config/nvim ] && mv ~/.config/nvim ~/.config/old-nvim
git clone https://github.com/kyb3rcipher/NabooVim.git ~/.config/nvim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

When you have nvim, the config and vim-plug installed open nvim and run: ```:PlugInstall``` to install the plugins.

And everything will be ready :smile:.

### Screenshots
![nvim](images/neovim.png)
![nvim-insert](images/neovim-insert.png)
