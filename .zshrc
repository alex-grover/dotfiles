# Load all of the config files in ~/.zsh that end in .zsh
for config_file ($HOME/.zsh/*.zsh); do
    source $config_file
done

# Save the location of the current completion dump file.
if [ -z "$ZSH_COMPDUMP" ]; then
    ZSH_COMPDUMP="~/.zcompdump"
fi

# Load and run compinit
autoload -U compinit
compinit -i -d "${ZSH_COMPDUMP}"






alias man='nocorrect man'
alias mkdir='nocorrect mkdir'
alias mv='nocorrect mv'
alias sudo='nocorrect sudo'
alias cloudapp='nocorrect cloudapp'

setopt correct_all






# Editor
export EDITOR='vim'


# Prompt

# color name based on return value of last command
local name_color="%(?:%{$fg[green]%}:%{$fg[red]%}%s)"

# prompt
PROMPT='${name_color}%B%n%b:%{$fg[cyan]%}%c$(git_prompt_info) %{$reset_color%}'

# git prompt
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[blue]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
