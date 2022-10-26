# prompt (by: @jallbrit)
if [[ $- == *i* ]]; then
BOLD="\[$(tput bold)\]"
DARK_RED="\[$(tput setaf 9)\]"
DARK_GREEN="\[$(tput setaf 10)\]"
DARK_ORANGE="\[$(tput setaf 11)\]"
DARK_BLUE="\[$(tput setaf 12)\]"
DARK_PURPLE="\[$(tput setaf 13)\]"
DARK_WHITE="\[$(tput setaf 15)\]"
RESET="\[$(tput sgr0)\]"
fi

__prompt_command() {
  returnValue="$?"

  [ "$returnValue" -ne 0 ] && PS1="${BOLD}${DARK_RED}[\u${DARK_GREEN}@${DARK_BLUE}\h${DARK_ORANGE} ${DARK_PURPLE}\W${DARK_RED} ✗]${DARK_WHITE}$ ${RESET}" || PS1="${BOLD}${DARK_RED}[${DARK_ORANGE}\u${DARK_GREEN}@${DARK_BLUE}\h${DARK_ORANGE} ${DARK_PURPLE}\W${DARK_RED}]${DARK_WHITE}$ ${RESET}"; \
}

case "$TERM" in
  xterm-color|xterm-kitty|alacritty|*-256color) PROMPT_COMMAND=__prompt_command ;;
  *) PS1='[\u@\h:\w]\$ ';;
esac

# PATH
export PATH="$HOME/.local/bin":$PATH

# basic aliases
alias l='ls'
alias e='$EDITOR'

# source files
[ -f ~/.bash_aliases ] && . ~/.bash_aliases

# set defaults
export VISUAL=nvim
export EDITOR="$VISUAL"
