# completion configuration

# use menu completion
setopt auto_menu

# case insensitive completion, complete anywhere in word
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# colored completion menu
zstyle ':completion:*' list-colors ''

# completion menu uses select
zstyle ':completion:*:*:*:*:*' menu select
