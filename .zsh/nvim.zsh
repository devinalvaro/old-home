# :terminal
if [ -n "$TMUX" ]; then
    if [ "$NVIM_LISTEN_ADDRESS" ]; then
        if [ -x "$(command -v nvr)"  ]; then
            export EDITOR='nvr'
            export GIT_EDITOR="$EDITOR --remote-wait"
        fi
    else
        nvim +Topen
    fi
fi
