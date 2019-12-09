#!/bin/bash

set -eu

# fzf
rm -f "$HOME/.local/share/fzf/fzf_history/*"

# neovim
rm -f "$HOME/.local/share/nvim/shada/main.shada"
rm -f "$HOME/.local/share/nvim/undo/*"
rm -f "$HOME/.local/share/nvim/view/*"
