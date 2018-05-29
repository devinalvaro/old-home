# antigen
[ -f $ANTIGEN/antigen.zsh ] && source $ANTIGEN/antigen.zsh

antigen use oh-my-zsh
antigen bundle tarruda/zsh-autosuggestions
antigen theme denysdovhan/spaceship-prompt spaceship
antigen apply

# fzf
[ -f $HOME/.zsh/fzf.zsh ] && source $HOME/.zsh/fzf.zsh

# tmux
[ -f $HOME/.zsh/tmux.zsh ] && source $HOME/.zsh/tmux.zsh

# --------------------------------

# aliases
[ -f $HOME/.zsh/aliases.zsh ] && source $HOME/.zsh/aliases.zsh

# bindings
[ -f $HOME/.zsh/bindings.zsh ] && source $HOME/.zsh/bindings.zsh

# functions
[ -f $HOME/.zsh/functions.zsh ] && source $HOME/.zsh/functions.zsh

# loadings
[ -f $HOME/.zsh/loadings.zsh ] && source $HOME/.zsh/loadings.zsh

# options
[ -f $HOME/.zsh/options.zsh ] && source $HOME/.zsh/options.zsh

# unaliases
[ -f $HOME/.zsh/unaliases.zsh ] && source $HOME/.zsh/unaliases.zsh
