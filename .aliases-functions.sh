alias ls='lsd'
alias ll='ls -l'
alias la='ls -a'
alias tree='lsd --tree'
alias cat='bat --pager=never'
alias catn='bat'
alias less='bat --pager=never'

# Shortcuts
alias update='sudo apt update && sudo apt upgrade -y'
alias rmdir='rm -rf'
#git
alias g='git'
alias ginit='git init && git add . && git commit -m "Initial commit"'
alias gc='git add . && git commit -m'
alias gp='git push origin'
alias gpl='git pull origin'
gragl(){
    git remote add gitlab https://gitlab.com/kyb3rcipher/$1.git
}
#git all push gitlab and github (for mirrors)
gpfa(){
    git push origin -f
    git push gitlab -f
}

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