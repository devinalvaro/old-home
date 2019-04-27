# editor
[ -x "$(command -v vi)"   ] && export EDITOR='vi'
[ -x "$(command -v vim)"  ] && export EDITOR='vim'
[ -x "$(command -v nvim)" ] && export EDITOR='nvim'

# paths
export GOPATH="$HOME/.go"
export PYTHONUSERBASE="$HOME/.pip"

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.fzf/bin:$PATH"
export PATH="$HOME/.gem/bin:$PATH"
export PATH="$HOME/.go/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.pip/bin:$PATH"

# lc
export LC_COLLATE='C'

# fzf
export FZF_DEFAULT_OPTS='--ansi --exact --inline-info --bind=alt-p:toggle-preview'

if [ -x "$(command -v bat)" ]; then
    export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS --preview='bat --color=always --style=plain {}' --preview-window=hidden"
fi

if [ -x "$(command -v fd)" ]; then
    export FZF_DEFAULT_COMMAND='fd --type=file --color=always --follow --hidden'
    export FZF_ALT_C_COMMAND='fd --type=directory --color=always --follow --no-ignore-vcs'
fi

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# virtualenvwrapper
export VIRTUALENVWRAPPER_PYTHON="$(which python3)"
