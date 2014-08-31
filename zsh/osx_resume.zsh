# set Apple Terminal.app resume directory for new tabs

# tell the terminal about the working directory whenever it changes
function update_terminal_cwd() {
    # identify the directory using a "file:" scheme URL, including
    # the host name to disambiguate local vs. remote paths

    # percent-encode the pathname
    local URL_PATH=''
    {
        # use LANG=C to process text byte-by-byte
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
    printf '\e]7;%s\a' "$PWD_URL"
}

# register the function so it is called whenever the working directory changes
autoload add-zsh-hook
add-zsh-hook precmd update_terminal_cwd

# tell the terminal about the initial directory
update_terminal_cwd
