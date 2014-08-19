# ls colors
autoload colors && colors;
export LSCOLORS="GxfxcxdxBxegedabagacad"

alias ls='ls -G'

setopt auto_cd
setopt multios
setopt cdablevars

# Setup the prompt with pretty colors
setopt prompt_subst
