# enabled terminals
TMUX_TERMS=(
    "$(which kitty 2> /dev/null)" # kitty
)

# attach/detach
if [[ "${TMUX_TERMS[*]}" =~ "$(ps -o 'cmd=' -p $(ps -o 'ppid=' -p $$))" ]]; then
    test -z "$TMUX" && (tmux attach || tmux new-session)

    while test -z "$TMUX"; do
        exit
    done
fi

# reload config
if [ -n "$TMUX" ]; then
    tmux source-file "$TMUX_CONF"
fi
