# editor
if [ -x "$(command -v nvim)" ]; then
    export EDITOR='nvim'
elif [ -x "$(command -v vim)" ]; then
    export EDITOR='vim'
else
    export EDITOR='vi'
fi

# paths
export GOPATH="$HOME/.go"
export PYTHONUSERBASE="$HOME/.pip"

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.fzf/bin:$PATH"
export PATH="$HOME/.gem/bin:$PATH"
export PATH="$HOME/.go/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.pip/bin:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"

# fzf
export FZF_DEFAULT_OPTS='--ansi --inline-info --height 10'

if [ -x "$(command -v fd)" ]; then
        export FZF_DEFAULT_COMMAND='fd --type=file --color=always --follow --hidden'
        export FZF_ALT_C_COMMAND='fd --type=directory --color=always --follow --no-ignore-vcs'
fi
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# lc
export LC_COLLATE='C'

# nvim
export NVIM_FZF_HISTORY_DIR="$HOME/.local/share/nvim/fzf"

# virtualenvwrapper
export VIRTUALENVWRAPPER_PYTHON="$(which python3)"
