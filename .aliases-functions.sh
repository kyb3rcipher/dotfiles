alias ls='lsd'
alias ll='ls -l'
alias la='ls -a'
alias cat='bat --pager=never'
alias catn='bat'
alias tree='lsd --tree'

# Shortcuts
alias update='sudo apt update && sudo apt upgrade -y'
alias rmdir='rm -rf'
#git
alias g='git'
alias ginit='git init && git add . && git commit -m "Initial commit"'
alias gc='git add . && git commit -m'
alias gp='git push origin'
alias gpl='git pull origin'

### Colorize commands
alias ip='ip --color=auto'
alias pacman='pacman --color=auto'

### Without sudo commands
#packages managers
alias apt='sudo apt'
alias dpkg='sudo dpkg'
alias dnf='sudo dnf'
alias yum='sudo yum'
alias snap='sudo snap'
alias pacman='sudo pacman'

# Others
alias su='sudo su'
alias vim='nvim'
