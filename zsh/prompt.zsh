# get the name of the branch we are on
function git_prompt_info() {
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0
    echo "${ref#refs/heads/}$(parse_git_dirty)"
}

# Checks if working tree is dirty
parse_git_dirty() {
    GIT_STATUS=$(command git status -s 2> /dev/null | tail -n1)
    if [[ -n $GIT_STATUS ]]; then
        echo " %F{yellow}✗%f"
    fi
}

# prompt
PROMPT='%(?:%F{green}:%F{red})%n%f %F{cyan}%c%f %F{red}$(git_prompt_info)%f '
SPROMPT='zsh: correct %F{red}%R%f to %F{green}%r%f [nyae]? '
