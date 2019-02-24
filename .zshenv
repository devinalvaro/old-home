# editor
if [ -x "$(command -v nvim)" ]; then
    export EDITOR='nvim'
elif [ -x "$(command -v vim)" ]; then
    export EDITOR='vim'
else
    export EDITOR='vi'
fi

# paths
export ANTIGEN="$HOME/.antigen"
export GOPATH="$HOME/.go"
export PYTHONUSERBASE="$HOME/.pip"

export PATH="$HOME/.fzf/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
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

# oh-my-zsh
export DISABLE_AUTO_TITLE=true

# spaceship
export SPACESHIP_PROMPT_ORDER=(
    # time
    # user
    dir
    host

    git
    # hg

    # aws
    # conda
    # docker
    # dotnet
    # elixir
    # ember
    golang
    # haskell
    # julia
    # kubecontext
    # node
    # package
    # php
    # pyenv
    ruby
    # rust
    # swift
    venv
    # xcode

    exec_time
    line_sep
    # battery
    # vi_mode
    jobs
    # exit_code
    char
)
export SPACESHIP_PROMPT_PREFIXES_SHOW=false

export SPACESHIP_DIR_TRUNC=0
export SPACESHIP_DIR_TRUNC_REPO=false

export SPACESHIP_GIT_SYMBOL='\0'
export SPACESHIP_GIT_STATUS_PREFIX=' '
export SPACESHIP_GIT_STATUS_SUFFIX='\0'

export SPACESHIP_VENV_SYMBOL='🐍 '
