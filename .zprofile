# terminal
export TERMINAL=alacritty

# xinit
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    exec startx
fi
