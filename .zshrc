# tmux
[ -f $HOME/.zsh/tmux.zsh ] && source $HOME/.zsh/tmux.zsh

# --------------------------------

# variables
[ -f $HOME/.zsh/variables.zsh ] && source $HOME/.zsh/variables.zsh

# --------------------------------

# antigen
[ -f $ANTIGEN/antigen.zsh ] && source $ANTIGEN/antigen.zsh

antigen use oh-my-zsh
antigen bundle hlissner/zsh-autopair
antigen bundle tarruda/zsh-autosuggestions
antigen theme denysdovhan/spaceship-prompt spaceship
antigen apply

# fzf
[ -f $HOME/.zsh/fzf.zsh ] && source $HOME/.zsh/fzf.zsh

# --------------------------------

# unaliases
[ -f $HOME/.zsh/unaliases.zsh ] && source $HOME/.zsh/unaliases.zsh

# --------------------------------

# aliases
[ -f $HOME/.zsh/aliases.zsh ] && source $HOME/.zsh/aliases.zsh

# bindings
[ -f $HOME/.zsh/bindings.zsh ] && source $HOME/.zsh/bindings.zsh

# functions
[ -f $HOME/.zsh/functions.zsh ] && source $HOME/.zsh/functions.zsh

# options
[ -f $HOME/.zsh/options.zsh ] && source $HOME/.zsh/options.zsh
