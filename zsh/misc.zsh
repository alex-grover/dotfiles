## smart urls
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

## file rename magick
bindkey "^[m" copy-prev-shell-word

## jobs
setopt long_list_jobs

# cd dir names
setopt auto_cd

# Grep colors and exclude .git folder
export GREP_OPTIONS="--color=auto --exclude-dir=.git"
export GREP_COLOR='1;32'

## pager
export PAGER="less"
export LESS="-R"

export LC_CTYPE=$LANG
