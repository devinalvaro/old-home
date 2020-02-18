#!/bin/bash

set -eu

# fzf
rm -f "$HOME/.local/share/fzf/fzf_history/"*

# less
rm "$HOME/.lesshst" 2> /dev/null && touch "$_"

# mysql
rm "$HOME/.mysql_history" 2> /dev/null && touch "$_"

# neovim
rm -f "$HOME/.local/share/nvim/shada/main.shada"
rm -f "$HOME/.local/share/nvim/undo/"*
rm -f "$HOME/.local/share/nvim/view/"*
