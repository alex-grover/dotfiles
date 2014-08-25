# colored man pages
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

# copy files
function copy {
    [[ "$#" != 1 ]] && return 1
    local file_to_copy=$1
    /bin/cat $file_to_copy | pbcopy
}

# move files to trash
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
