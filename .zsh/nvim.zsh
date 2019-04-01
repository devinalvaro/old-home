# :terminal
if [ -n "$TMUX" ]; then
    if [ "$NVIM_LISTEN_ADDRESS" ]; then
        if [ -x "$(command -v nvr)"  ]; then
            export EDITOR='nvr'
            export GIT_EDITOR="$EDITOR --remote-wait"

            alias nvrcwd='nvr . -c "cd %:p:h" -c "bd"'
        fi
    else
        nvim +Topen
    fi
fi
