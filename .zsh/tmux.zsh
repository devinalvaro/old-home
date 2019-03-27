# enabled terminals
TMUX_TERMS=(
    "$(which kitty 2> /dev/null)" # kitty
)

# config file
TMUX_CONF="$HOME/.tmux/tmux.zsh.conf"

# attach/detach
if [[ "${TMUX_TERMS[*]}" =~ "$(ps -o 'cmd=' -p $(ps -o 'ppid=' -p $$))" ]]; then
    test -z "$TMUX" && (tmux -f "$TMUX_CONF" attach || tmux -f "$TMUX_CONF" new-session)

    while test -z "$TMUX"; do
        exit
    done
fi

# reload config
if [ -n "$TMUX" ]; then
    tmux source-file "$TMUX_CONF"
fi
