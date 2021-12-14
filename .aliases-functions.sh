alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
# Check if exist bat and lsd
if [ -f /usr/bin/lsd ]; then 
	alias ls='lsd --group-dirs=first'
	alias tree='lsd --tree'
fi
if [ -f /usr/bin/bat ]; then
	alias cat='bat --pager=never'
fi

# Shortcuts
alias update='sudo apt update && sudo apt upgrade -y'
alias rmdir='rm -rf'
alias apt='sudo apt'
alias su='sudo su'

# Others
alias ip='ip --color=auto'
if [ -f usr/bin/nvim ]; then
	alias vim='nvim'
fi
