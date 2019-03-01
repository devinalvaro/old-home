# env
source "$HOME/.zsh/variables.zsh"

[ -f "$HOME/.env" ] && source "$HOME/.env"

# --------------------------------

# antigen
[ -d "$ANTIGEN" ] && source "$ANTIGEN/antigen.zsh"

antigen use oh-my-zsh
antigen bundle tarruda/zsh-autosuggestions
antigen theme denysdovhan/spaceship-prompt spaceship
antigen apply

# fzf
[ -x "$(command -v fzf)" ] && source "$HOME/.zsh/fzf.zsh"

# tmux
[ -x "$(command -v tmux)" ] && source "$HOME/.zsh/tmux.zsh"

# --------------------------------

# aliases
source "$HOME/.zsh/aliases.zsh"

# bindings
source "$HOME/.zsh/bindings.zsh"

# functions
source "$HOME/.zsh/functions.zsh"

# options
source "$HOME/.zsh/options.zsh"

# sources
source "$HOME/.zsh/sources.zsh"

# unaliases
source "$HOME/.zsh/unaliases.zsh"
