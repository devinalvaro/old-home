# Setup fzf
# ---------
if [[ ! "$PATH" == */home/devin/.fzf/bin* ]]; then
  export PATH="$PATH:/home/devin/.fzf/bin"
fi

# Auto-completion
# ---------------
# [[ $- == *i* ]] && source "/home/devin/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/devin/.fzf/shell/key-bindings.zsh"
