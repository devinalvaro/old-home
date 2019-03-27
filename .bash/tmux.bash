# config file
TMUX_CONF="$HOME/.tmux/tmux.bash.conf"

# attach/detach
test -z "$TMUX" && (tmux -f "$TMUX_CONF" attach || tmux -f "$TMUX_CONF" new-session)

while test -z "$TMUX"; do
    exit
done

# reload config
if [ -n "$TMUX" ]; then
    tmux source-file "$TMUX_CONF"
fi
