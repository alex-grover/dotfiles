source "~/.config/kak/plugins/plug.kak/rc/plug.kak"

plug "andreyorst/fzf.kak"

def ide %{
    rename-client main
    set global jumpclient main

    new rename-client tools
    set global toolsclient tools

    new rename-client docs
    set global docsclient docs
}
