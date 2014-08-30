# load all of the config files in ~/.zsh that end in .zsh
for config_file ($HOME/.zsh/*.zsh); do
    source $config_file
done

# initialize completion
ZSH_COMPDUMP="~/.zcompdump"
autoload -U compinit
compinit -i -d "${ZSH_COMPDUMP}"
setopt correct_all

# editor
export EDITOR='vim'

# path for Homebrew
export PATH=/usr/local/bin:$PATH
