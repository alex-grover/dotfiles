# load plugins (TODO: better docs here)
plugins=(git osx terminalapp sublime)

# cloudapp plugin
alias cloudapp=/usr/local/bin/cloudapp.rb

# colored-man plugin
man() {
      env \
          LESS_TERMCAP_mb=$(printf '\e[1;31m') \
      LESS_TERMCAP_md=$(printf '\e[1;31m') \
      LESS_TERMCAP_me=$(printf '\e[0m') \
      LESS_TERMCAP_se=$(printf '\e[0m') \
      LESS_TERMCAP_so=$(printf '\e[1;44;33m') \
      LESS_TERMCAP_ue=$(printf '\e[0m') \
      LESS_TERMCAP_us=$(printf '\e[1;32m') \
                   man '$@'
}

# copy plugin
function copy {
  [[ '$#' != 1 ]] && return 1
  local file_to_copy=$1
  cat $file_to_copy | pbcopy
}

# sublime plugin
alias subl='/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'



ZSH='Developer/dotfiles'










# Initializes Oh My Zsh

# Load all of the config files in ~/oh-my-zsh that end in .zsh
for config_file ($ZSH/.zsh-lib/*.zsh); do
  source $config_file
done

is_plugin() {
  local base_dir=$1
  local name=$2
  test -f $base_dir/plugins/$name/$name.plugin.zsh \
    || test -f $base_dir/plugins/$name/_$name
}
# Add all defined plugins to fpath. This must be done
# before running compinit.
for plugin ($plugins); do
  if is_plugin $ZSH $plugin; then
    fpath=($ZSH/.zsh-plugins/$plugin $fpath)
  fi
done

# Save the location of the current completion dump file.
if [ -z '$ZSH_COMPDUMP' ]; then
  ZSH_COMPDUMP='~/.zcompdump'
fi

# Load and run compinit
autoload -U compinit
compinit -i -d '${ZSH_COMPDUMP}'

# Load all of the plugins that were defined in ~/.zshrc
for plugin ($plugins); do
  if [ -f $ZSH/.zsh-plugins/$plugin/$plugin.plugin.zsh ]; then
    source $ZSH/.zsh-plugins/$plugin/$plugin.plugin.zsh
  fi
done












# Aliases
alias sl=ls
alias la='ls -a'
alias ll='ls -alh'
alias ios='open $(xcode-select -p)/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app'
# alias cd ... cd ../..?
# alias grep to -rin?

if [[ '$ENABLE_CORRECTION' == 'true' ]]; then
  alias man='nocorrect man'
  alias mkdir='nocorrect mkdir'
  alias mv='nocorrect mv'
  alias sudo='nocorrect sudo'

  setopt correct_all
fi














# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH

# Preferred editor
export EDITOR='vim'



# color name based on return value of last command
local name_color='%(?:%{$fg_bold[green]%}:%{$fg_bold[red]%}%s)'

# prompt
PROMPT='${name_color}%B%n%b:%{$fg_bold[cyan]%}%c$(git_prompt_info) %{$reset_color%}'

# git prompt
ZSH_THEME_GIT_PROMPT_PREFIX=' %{$fg[blue]%}(%{$fg[red]%}'
ZSH_THEME_GIT_PROMPT_SUFFIX='%{$reset_color%}'
ZSH_THEME_GIT_PROMPT_DIRTY='%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}'
ZSH_THEME_GIT_PROMPT_CLEAN='%{$fg[blue]%})'
