alias ls='lsd'
alias ll='lsd -l'
alias la='lsd -a'
alias tree='lsd --tree'
alias cat="echo 'WTF, use kitty not cat!!!'"
alias kitty='bat --pager=never'
alias kittyo='/usr/bin/bat'
alias kittyn='/usr/bin/cat'
alias less='bat --pager=never'
alias ifconfig="echo 'WTF, use ip a not ifconfig!!!'"
alias ifconfign="/usr/bin/ifconfig"

# Shortcuts
alias update='sudo apt update && sudo apt upgrade -y'
alias rmdir='rm -rf'
alias mkw="mkdir {scans,informations,exploits,others}"
alias sd='shutdown now'
#git
alias gc='git add .;git commit -m'
alias gcc='git commit -m'
alias gp='git pull'
alias gps='git push'
alias gl='git log'
alias gck='git checkout'

### Colorize commands
alias ip='ip --color=auto'
alias pacman='pacman --color=auto'

### Without sudo commands
#packages managers
alias apt='sudo apt'
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
