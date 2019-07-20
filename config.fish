# Remove the default login message
set fish_greeting

# Remove partial directories from prompt
function prompt_pwd
    basename $PWD
end

# Environment variables
set -gx EDITOR kak
set -gx CLICOLOR 1
set -gx LSCOLORS GxfxcxdxBxegedabagacad
set -gx GREP_OPTIONS -r --exclude-dir=.git

# Git aliases
if status --is-interactive
    abbr --add --global ga git add
    abbr --add --global gb git branch
    abbr --add --global gc git commit
    abbr --add --global gd git diff
    abbr --add --global gf git fetch
    abbr --add --global gl git pull
    abbr --add --global glg git log --stat --graph
    abbr --add --global gls git ls-files
    abbr --add --global go git open
    abbr --add --global gp git push
    abbr --add --global gr git remote -v
    abbr --add --global gs git status
    abbr --add --global gt git checkout
end
