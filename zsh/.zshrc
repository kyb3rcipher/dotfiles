# enable zsh functions
autoload -U colors && colors
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git

# VCS config (by: @chrisatmachine)
precmd_vcs_info() { vcs_info }	# setup a hook that runs before every prompt. 
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked	# add a function to check for untracked files in the directory
+vi-git-untracked(){
  if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
    git status --porcelain | grep '??' &> /dev/null ; then
    hook_com[staged]+='!' # signify new files with a bang
  fi
}
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git:*' formats " %{$fg[yellow]%}%b%{$fg[red]%}%m%u%c"	# vcs style

# prompt
PROMPT="%B%{$fg[red]%}[%(?:%{$fg[yellow]%}:%{$fg[red]%})% %n%{$fg[green]%}@%{$fg[blue]%}%m\$vcs_info_msg_0_ %{$fg[magenta]%}%c%{$fg[red]%}%(?:]: ✗])%{$fg[white]%}$%{$reset_color%} "

# PATH
export PATH="$HOME/.local/bin":$PATH

# history
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# keybinds
bindkey "\e[H" beginning-of-line	   # home
bindkey "\e[F" end-of-line	         # end
bindkey "\e[3~" delete-char	         # supr
bindkey '^[[1;5C' forward-word       # ctrl + -> (next word)
bindkey '^[[1;5D' backward-word      # ctrl + <- (back word)

# source files
[ -f ~/.zsh_plugins ] && . ~/.zsh_plugins
[ -f ~/.zsh_aliases ] && . ~/.zsh_aliases
[ -f ~/.zsh_local ] && . ~/.zsh_local

# set defaults
export VISUAL=nvim
export EDITOR="$VISUAL"
