# enabled terminals
terms=(
    /usr/lib/gnome-terminal/gnome-terminal-server # gnome-terminal
    "$(which kitty)" "python3 $(which kitty)" # kitty
)

# attach/detach
if which tmux > /dev/null 2>&1 &&
        [[ ${terms[*]} =~ $(ps -o 'cmd=' -p $(ps -o 'ppid=' -p $$)) ]]; then
    test -z "$TMUX" && (tmux attach || tmux new-session)

    while test -z "$TMUX"; do
        exit
    done
fi

# reload config
if [[ -n $TMUX ]]; then
    tmux source-file ~/.tmux.conf
fi