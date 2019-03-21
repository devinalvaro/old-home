# enabled terminals
terms=(
    "$(which kitty 2> /dev/null)" # kitty
)

# config file
conf="$HOME/.tmux/tmux.zsh.conf"

# attach/detach
if [[ "${terms[*]}" =~ "$(ps -o 'cmd=' -p $(ps -o 'ppid=' -p $$))" ]]; then
    test -z "$TMUX" && (tmux -f "$conf" attach || tmux -f "$conf" new-session)

    while test -z "$TMUX"; do
        exit
    done
fi

# reload config
if [[ -n "$TMUX" ]]; then
    tmux source-file "$conf"
fi
