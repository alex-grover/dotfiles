# command history configuration

HISTFILE=$HOME/.zsh_history
HISTSIZE=5000
SAVEHIST=5000

setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt inc_append_history
