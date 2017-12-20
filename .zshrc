# launch tmux
declare -A terms
for term in [ 'alacritty' ]; do
    terms[$term]=1
done

if which tmux >/dev/null 2>&1 &&
        [[ ${terms[$(ps -o 'cmd=' -p $(ps -o 'ppid=' -p $$))]} ]]; then
    test -z "$TMUX" && (tmux attach || tmux new-session)

    while test -z "$TMUX"; do
        exit
    done
fi

# aliases
[ -f $HOME/.zsh/aliases.zsh ] && source $HOME/.zsh/aliases.zsh

# functions
[ -f $HOME/.zsh/functions.zsh ] && source $HOME/.zsh/functions.zsh

# variables
[ -f $HOME/.zsh/variables.zsh ] && source $HOME/.zsh/variables.zsh

# antigen
[ -f $ANTIGEN/antigen.zsh ] && source $ANTIGEN/antigen.zsh

antigen use oh-my-zsh
antigen bundle tarruda/zsh-autosuggestions
antigen theme denysdovhan/spaceship-zsh-theme spaceship
antigen apply

# fzf
[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh
