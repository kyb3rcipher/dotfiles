alias ls='lsd'
alias ll='ls -l'
alias la='ls -a'
alias tree='lsd --tree'
alias kitty='bat --pager=never'
alias kittyo='bat'
alias kittyn='/usr/bin/cat'
alias less='bat --pager=never'
alias cat="echo 'WTF, use kitty not cat!!!'"
alias ifconfig="echo 'WTF, use ip a not ifconfig!!!'"
alias ifconfign="/usr/sbin/ifconfig"

# Shortcuts
alias update='sudo apt update && sudo apt upgrade -y'
alias rmdir='rm -rf'
alias mkw='mkdir {scans,informations,exploits,others}'
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
alias vi='nvim'
alias nano='nvim'
alias pgp='gpg'
