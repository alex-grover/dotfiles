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

# go env variables
export GOPATH=$HOME/Developer/go
export GOROOT=/usr/local/Cellar/go/1.3.1/libexec

# for limetext/lime
export PKG_CONFIG_PATH=/usr/local/opt/python3/Frameworks/Python.framework/Versions/3.4/lib/pkgconfig
