# config file
conf=$HOME/.tmux/tmux.conf.remote

# attach/detach
if which tmux > /dev/null 2>&1; then
    test -z "$TMUX" && (tmux -f $conf attach || tmux -f $conf new-session)

    while test -z "$TMUX"; do
        exit
    done
fi

# reload config
if [[ -n $TMUX ]]; then
    tmux source-file $conf
fi
