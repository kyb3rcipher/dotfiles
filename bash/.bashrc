# prompt (by: @jallbrit)
BOLD="\[$(tput bold)\]"	# colors for promt
DARK_RED="\[$(tput setaf 9)\]"
DARK_GREEN="\[$(tput setaf 10)\]"
DARK_ORANGE="\[$(tput setaf 11)\]"
DARK_BLUE="\[$(tput setaf 12)\]"
DARK_PURPLE="\[$(tput setaf 13)\]"
DARK_WHITE="\[$(tput setaf 15)\]"
RESET="\[$(tput sgr0)\]"

__prompt_command() {
	returnValue="$?"
	. ~/.bash_git	# source git bash prompt

	[ "$returnValue" -ne 0 ] && PS1="${BOLD}${DARK_RED}[\u${DARK_GREEN}@${DARK_BLUE}\h${DARK_ORANGE}$(__git_ps1 " %s") ${DARK_PURPLE}\W${DARK_RED} ✗]${DARK_WHITE}$ ${RESET}" || PS1="${BOLD}${DARK_RED}[${DARK_ORANGE}\u${DARK_GREEN}@${DARK_BLUE}\h${DARK_ORANGE}$(__git_ps1 " %s") ${DARK_PURPLE}\W${DARK_RED}]${DARK_WHITE}$ ${RESET}"; \
}

case "$TERM" in
	xterm-color|alacritty|*-256color) PROMPT_COMMAND=__prompt_command ;;
	*) PS1='[\u@\h:\w]\$ ' ;;
esac

# source files
[ -f ~/.bash_aliases ] && . ~/.bash_aliases
[ -f ~/.bash_custom ] && . ~/.bash_custom

# sets defaults for applications
export VISUAL=vim
export EDITOR="$VISUAL"
