# change default commands
alias ls='ls --color=auto'
alias ip='ip --color=auto'
alias rmdir='rm -rf'
alias apt='sudo apt'
alias pacman='pacman --color=auto'

# shortcuts
alias v='vim'
alias g='git'
alias ga='git add'
alias gs='git status'
alias gc='git commit'
alias gp='git push'
alias gl='git log'
alias fuck='sudo $(history -p \!\!)'
alias lla='ls -la'
alias .b='nvim ~/.bash_aliases'
alias .v='nvim ~/.config/nvim/init.vim'
alias rmvimswap='rm -rf ~/.local/share/nvim/swap'
alias update='apt update && apt upgrade -y && apt autoremove -y'

# better commands
command -v exa > /dev/null && alias ls='exa --icons --git'
command -v bat > /dev/null && alias cat='bat --pager=never' && alias catn='/usr/bin/cat'
