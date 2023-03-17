setopt promptsubst

# Git prompt
autoload -Uz vcs_info
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked
+vi-git-untracked(){
    if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
        git status --porcelain | grep '??' &> /dev/null ; then
        hook_com[staged]+='+'
    fi
}
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git:*' formats '%F{red}%b%m%u%c%F{white}, '

# Precmd (before PROMPT)
precmd() {
    vcs_info
    if [ -z "$_NEW_LINE_BEFORE_PROMPT" ]; then
        _NEW_LINE_BEFORE_PROMPT=1
    else
        print ""
    fi
}

# PROMPT
PROMPT=$'%B[%(#:%F{red}root:%F{blue}%n%F{red}@%F{green}%m)%F{white}, ${vcs_info_msg_0_}%F{magenta}%*%F{white}, %(?.%F{green}:).%F{red}:()%F{white}]\n%F{yellow}%(6~.%-1~/…/%4~.%5~) %(#:%F{red}#:%F{white}$)%F{reset} '

# PATH
export PATH="$HOME/.local/bin:$PATH"

# history
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# source config files
if [ -f ~/.zsh_plugins ]; then
    . ~/.zsh_plugins
fi
if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi
if [ -f ~/.zsh_local ]; then
    . ~/.zsh_local
fi

# keybinds
bindkey '^[[1;5C' forward-word                    # ctrl + ->
bindkey '^[[1;5D' backward-word                   # ctrl + <-
bindkey '^[[Z' undo                               # shift + tab undo last action
bindkey '^[[H' beginning-of-line                  # home
bindkey '^[[F' end-of-line                        # end
bindkey '^[[3~' delete-char                       # delete

# set defaults
if command -v vim > /dev/null; then
    export VISUAL=vim
elif command -v nvim > /dev/null; then
    export VISUAL=nvim
elif command -v vi > /dev/null; then
    export VISUAL=vi
fi
export EDITOR=$VISUAL
