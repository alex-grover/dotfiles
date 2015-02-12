# alias configuration

# git aliases
alias gs='git status'
alias gd='git diff'
alias gl='git pull --rebase'
alias gp='git push'
alias gf='git fetch'
alias gm='git merge'
alias gc='git commit -v'
alias gcm='git commit -m'
alias gcam='git commit -am'
alias gb='git branch'
alias gr='git remote'
alias gt='git checkout'
alias glg='git log --stat --graph --decorate --all'
alias ga='git add'
alias gls='git ls-files'
alias go='git browse-remote'

# ls aliases
alias la='ls -a'
alias ll='ls -alh'

# directory aliases
alias ...='cd ../..'
alias ....='cd ../../..'

# cat syntax highlighting
alias cat='pygmentize -g'

# sublime text shortcut
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

# iOS Simulator shortcut
alias ios="open $(xcode-select -p)/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app"
