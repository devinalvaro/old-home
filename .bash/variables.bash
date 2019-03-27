# editor
[ -x "$(command -v vi)"   ] && export EDITOR='vi'
[ -x "$(command -v vim)"  ] && export EDITOR='vim'
[ -x "$(command -v nvim)" ] && export EDITOR='nvim'
[ -x "$(command -v nvr)"  ] && [ "$NVIM_LISTEN_ADDRESS" ] && export EDITOR='nvr'

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

# lc
export LC_COLLATE='C'

# fzf
if [ -x "$(command -v fd)" ]; then
    export FZF_DEFAULT_COMMAND='fd --type=file --color=always --follow --hidden'
    export FZF_ALT_C_COMMAND='fd --type=directory --color=always --follow --no-ignore-vcs'
fi
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS='--ansi --inline-info --height 10'

# virtualenvwrapper
export VIRTUALENVWRAPPER_PYTHON="$(which python3)"
