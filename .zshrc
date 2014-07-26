# cloudapp plugin
alias cloudapp=/usr/local/bin/cloudapp

# colored-man plugin
man() {
      env \
      LESS_TERMCAP_mb=$(printf "\e[1;31m") \
      LESS_TERMCAP_md=$(printf "\e[1;31m") \
      LESS_TERMCAP_me=$(printf "\e[0m") \
      LESS_TERMCAP_se=$(printf "\e[0m") \
      LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
      LESS_TERMCAP_ue=$(printf "\e[0m") \
      LESS_TERMCAP_us=$(printf "\e[1;32m") \
                   man "$@"
}

# copy plugin
function copy {
  [[ "$#" != 1 ]] && return 1
  local file_to_copy=$1
  cat $file_to_copy | pbcopy
}

# sublime plugin
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

# osx plugin
function quick-look() {
  (( $# > 0 )) && qlmanage -p $* &>/dev/null &
}

function trash() {
  local trash_dir="${HOME}/.Trash"
  local temp_ifs=$IFS
  IFS=$'\n'
  for item in "$@"; do
    if [[ -e "$item" ]]; then
      item_name="$(basename $item)"
      if [[ -e "${trash_dir}/${item_name}" ]]; then
        mv -f "$item" "${trash_dir}/${item_name} $(date "+%H-%M-%S")"
      else
        mv -f "$item" "${trash_dir}/"
      fi
    fi
  done
  IFS=$temp_ifs
}


# Set Apple Terminal.app resume directory
# based on this answer: http://superuser.com/a/315029

# Tell the terminal about the working directory whenever it changes.
if [[ "$TERM_PROGRAM" == "Apple_Terminal" ]] && [[ -z "$INSIDE_EMACS" ]]; then
  update_terminal_cwd() {
        # Identify the directory using a "file:" scheme URL, including
        # the host name to disambiguate local vs. remote paths.

        # Percent-encode the pathname.
        local URL_PATH=''
        {
            # Use LANG=C to process text byte-by-byte.
            local i ch hexch LANG=C
            for ((i = 1; i <= ${#PWD}; ++i)); do
                ch="$PWD[i]"
                if [[ "$ch" =~ [/._~A-Za-z0-9-] ]]; then
                    URL_PATH+="$ch"
                else
                    hexch=$(printf "%02X" "'$ch")
                    URL_PATH+="%$hexch"
                fi
            done
        }

        local PWD_URL="file://$HOST$URL_PATH"
        #echo "$PWD_URL"        # testing
        printf '\e]7;%s\a' "$PWD_URL"
    }

    # Register the function so it is called whenever the working
    # directory changes.
    autoload add-zsh-hook
    add-zsh-hook precmd update_terminal_cwd

    # Tell the terminal about the initial directory.
    update_terminal_cwd
fi













ZSH="$HOME/Developer/dotfiles"










# Initializes Oh My Zsh

# Load all of the config files in ~/oh-my-zsh that end in .zsh
for config_file ($ZSH/zsh/*.zsh); do
  source $config_file
done

# Save the location of the current completion dump file.
if [ -z "$ZSH_COMPDUMP" ]; then
  ZSH_COMPDUMP="~/.zcompdump"
fi

# Load and run compinit
autoload -U compinit
compinit -i -d "${ZSH_COMPDUMP}"





# GIT PLUGIN

# Aliases
alias gst='git status'
compdef _git gst=git-status
alias gd='git diff'
compdef _git gd=git-diff
alias gdc='git diff --cached'
compdef _git gdc=git-diff
alias gl='git pull'
compdef _git gl=git-pull
alias gup='git pull --rebase'
compdef _git gup=git-fetch
alias gp='git push'
compdef _git gp=git-push
alias gd='git diff'
alias gc='git commit -v'
compdef _git gc=git-commit
alias gcm='git commit -m'
compdef _git gcm=git-commit
alias gcam='git commit -am'
compdef _git gcam=git-commit
alias grv='git remote -v'
compdef _git grv=git-remote
alias gb='git branch'
compdef _git gb=git-branch
alias glg='git log --stat --max-count=10'
compdef _git glg=git-log
alias glgg='git log --graph --max-count=10'
compdef _git glgg=git-log
alias glgga='git log --graph --decorate --all'
compdef _git glgga=git-log
alias glo='git log --oneline --decorate --color'
compdef _git glo=git-log
alias glog='git log --oneline --decorate --color --graph'
compdef _git glog=git-log
alias gss='git status -s'
compdef _git gss=git-status
alias ga='git add'
compdef _git ga=git-add

alias gls='git ls-files'

alias gsts='git stash show --text'
alias gsta='git stash'
alias gstp='git stash pop'
alias gstd='git stash drop'




# Aliases
alias sl=ls
alias la="ls -a"
alias ll="ls -alh"
alias ios="open $(xcode-select -p)/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app"
# alias cd ... cd ../..?
# alias grep to -rin?

alias man='nocorrect man'
alias mkdir='nocorrect mkdir'
alias mv='nocorrect mv'
alias sudo='nocorrect sudo'
alias cloudapp='nocorrect cloudapp'

setopt correct_all














# User configuration

# Preferred editor
export EDITOR='vim'



# color name based on return value of last command
local name_color="%(?:%{$fg_bold[green]%}:%{$fg_bold[red]%}%s)"

# prompt
PROMPT='${name_color}%B%n%b:%{$fg_bold[cyan]%}%c$(git_prompt_info) %{$reset_color%}'

# git prompt
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[blue]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
