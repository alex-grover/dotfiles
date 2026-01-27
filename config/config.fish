# Shell configuration
set -gx fish_greeting

# Environment variables
set -gx EDITOR kak
set -gx ADBLOCK 1
set -gx DISABLE_OPENCOLLECTIVE true

# Git aliases
if status --is-interactive
    abbr -a -g ga git add
    abbr -a -g gb git branch
    abbr -a -g gc git commit
    abbr -a -g gd git diff
    abbr -a -g gdc git diff --cached
    abbr -a -g gf git fetch
    abbr -a -g gl git pull
    abbr -a -g glg git log --stat --graph
    abbr -a -g gls git ls-files
    abbr -a -g gp git push
    abbr -a -g gpf git push --force-with-lease
    abbr -a -g gr git remote -v
    abbr -a -g gs git status
    abbr -a -g gt git checkout
    abbr -a -g gtb git checkout -b
end

# Function aliases
function cat --wraps bat
    bat $argv
end

function grep --wraps rg
    rg $argv
end

function ls --wraps eza
    eza $argv --git
end

function ll --wraps eza
    eza $argv -lh --git
end

function la --wraps eza
    eza $argv -lah --git
end

starship init fish | source

zoxide init --cmd cd fish | source
