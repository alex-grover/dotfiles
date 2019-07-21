# Remove the default login message
set fish_greeting

# Environment variables
set -gx EDITOR kak
set -gx CLICOLOR 1
set -gx LSCOLORS GxfxcxdxBxegedabagacad
set -gx GREP_OPTIONS -r --exclude-dir=.git
set -gx theme_short_path yes

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
    abbr -a -g go git open
    abbr -a -g gp git push
    abbr -a -g gr git remote -v
    abbr -a -g gs git status
    abbr -a -g gt git checkout
end
