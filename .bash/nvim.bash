# :terminal
if [ -n "$TMUX" ]; then
    if [ "$NVIM_LISTEN_ADDRESS" ]; then
        [ -x "$(command -v nvr)"  ] && export EDITOR='nvr'
    else
        nvim +startinsert +Topen
    fi
fi
