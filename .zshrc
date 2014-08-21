# load all of the config files in ~/.zsh that end in .zsh
for config_file ($HOME/.zsh/*.zsh); do
    source $config_file
done

# save the location of the current completion dump file.
if [ -z "$ZSH_COMPDUMP" ]; then
    ZSH_COMPDUMP="~/.zcompdump"
fi

# load and run compinit
autoload -U compinit
compinit -i -d "${ZSH_COMPDUMP}"
setopt correct_all

# nocorrect aliases
alias man='nocorrect man'
alias mkdir='nocorrect mkdir'
alias mv='nocorrect mv'
alias sudo='nocorrect sudo'
alias cloudapp='nocorrect cloudapp'

# editor
export EDITOR='vim'

# path for Homebrew
export PATH=/usr/local/bin:$PATH

# go env variables
export GOPATH=$HOME/Developer/go
export GOROOT=/usr/local/Cellar/go/1.3.1/libexec

# for limetext/lime
export PKG_CONFIG_PATH=$(brew --prefix python3)/Frameworks/Python.framework/Versions/3.4/lib/pkgconfig
