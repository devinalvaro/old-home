#!/usr/bin/env bash

# Skips everything in non-interactive shell
[[ $- != *i* ]] && return

# --------------------------------

# Path to the bash it configuration
export BASH_IT="$HOME/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='pure'

# Don't check mail when opening terminal.
unset MAILCHECK

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set Xterm/screen/Tmux title with only a short hostname.
# Uncomment this (or set SHORT_HOSTNAME to something else),
# Will otherwise fall back on $HOSTNAME.
export SHORT_HOSTNAME=$(hostname -s)

# Set Xterm/screen/Tmux title with only a short username.
# Uncomment this (or set SHORT_USER to something else),
# Will otherwise fall back on $USER.
export SHORT_USER=${USER:0:8}

# Set Xterm/screen/Tmux title with shortened command and directory.
# Uncomment this to set.
export SHORT_TERM_LINE=true

# Load Bash It
[ -d $BASH_IT ] && source $BASH_IT/bash_it.sh

# --------------------------------

# env
[ -f "$HOME/.env" ] && export "$(grep -v '^#' $HOME/.env | xargs -d '\n')"

# variables
source "$HOME/.bash/env.bash"

# --------------------------------

# fzf
[ -x "$(command -v fzf)" ] && source "$HOME/.bash/fzf.bash"

# tmux
[ -x "$(command -v tmux)" ] && source "$HOME/.bash/tmux.bash"

# --------------------------------

# aliases
source "$HOME/.bash/aliases.bash"

# functions
source "$HOME/.bash/functions.bash"

# options
source "$HOME/.bash/options.bash"

# sources
source "$HOME/.bash/sources.bash"

# unaliases
source "$HOME/.bash/unaliases.bash"
