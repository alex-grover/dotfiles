#
# Color grep results
#

GREP_OPTIONS="--color=auto"

# avoid .git folder (if the necessary grep flags are available)
grep-flag-available() {
    echo | grep $1 "" >/dev/null 2>&1
}

if grep-flag-available --exclude-dir=.cvs; then
    GREP_OPTIONS+=" --exclude-dir=.git"
elif grep-flag-available --exclude=.cvs; then
    GREP_OPTIONS+=" --exclude=.git"
fi

unfunction grep-flag-available

export GREP_OPTIONS="$GREP_OPTIONS"
export GREP_COLOR='1;32'
