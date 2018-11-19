# config file
conf=$HOME/.tmux/tmux.bash.conf

# attach/detach
test -z $TMUX && (tmux -f $conf attach || tmux -f $conf new-session)

while test -z $TMUX; do
    exit
done

# reload config
if [[ -n $TMUX ]]; then
    tmux source-file $conf
fi
