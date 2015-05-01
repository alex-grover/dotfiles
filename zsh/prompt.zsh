# prompt configuration

# get the name of the branch we are on
function git_prompt_info() {
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0
    echo "${ref#refs/heads/} $(parse_git_dirty)"
}

# checks if working tree is dirty
function parse_git_dirty() {
    GIT_STATUS=$(command git status --porcelain 2> /dev/null | tail -n1)
    if [[ -n $GIT_STATUS ]]; then
        echo "%F{yellow}✗%f "
    fi
}

# prompt
PROMPT='%(?:%F{green}:%F{red})%n%f %F{cyan}%c%f %F{magenta}$(git_prompt_info)%f'
SPROMPT='zsh: correct %F{red}%R%f to %F{green}%r%f [nyae]? '

# set up the prompt with pretty colors
setopt prompt_subst
