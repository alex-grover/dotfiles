# ls colors
autoload colors; colors;
export LSCOLORS="Gxfxcxdxbxegedabagacad"

ls --color -d . &>/dev/null 2>&1 && alias ls='ls --color=tty' || alias ls='ls -G'

#setopt no_beep
setopt auto_cd
setopt multios
setopt cdablevarS

if [[ x$WINDOW != x ]]
then
    SCREEN_NO="%B$WINDOW%b "
else
    SCREEN_NO=""
fi

# Setup the prompt with pretty colors
setopt prompt_subst
