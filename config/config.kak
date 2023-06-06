# Taken from https://github.com/kakoune-editor/kakoune-extra-filetypes/blob/8ffeec08068edfee42e076c5f6d56a54a498bad2/rc/git-commit-overflow.kak

hook -group git-commit-highlight global WinSetOption filetype=git-commit %{
    require-module git-commit-overflow

    add-highlighter window/git-commit-overflow ref git-commit-overflow
    hook -once -always window WinSetOption filetype=.* %{ remove-highlighter window/git-commit-overflow }
}

provide-module git-commit-overflow %{
    add-highlighter shared/git-commit-overflow group

    add-highlighter shared/git-commit-overflow/ regex ^\h*[^#@+-][^\n]{100}(?<overflow>[^\n]+) overflow:Error
    add-highlighter shared/git-commit-overflow/ regex \A\n*[^\n]{100}(?<overflow>[^\n]+) overflow:Error
    add-highlighter shared/git-commit-overflow/ regex \A[^\n]*\n([^\n]+) 1:Error
}
