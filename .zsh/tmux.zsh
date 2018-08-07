# enabled terminals
terms=(
    "$(which kitty 2> /dev/null)" # kitty
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
    tmux source-file $HOME/.tmux.conf
fi
