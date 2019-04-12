# Setup fzf
# ---------
if [ ! "$PATH" = "*$HOME/.fzf/bin*" ]; then
    export PATH="$PATH:$HOME/.fzf/bin"
fi

# Key bindings
# ------------
source "$HOME/.fzf/shell/key-bindings.zsh"
