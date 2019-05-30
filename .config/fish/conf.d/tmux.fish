if status is-interactive;
    if set -q KITTY_WINDOW_ID; and not set -q TMUX;
        exec tmux new-session -A -s main
    end
end
