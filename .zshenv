# editor
export EDITOR=nvim

# paths
export ANTIGEN=$HOME/.antigen
export GOPATH=$HOME/.go
export PYTHONUSERBASE=$HOME/.pip

export PATH=$HOME/.gem/bin:$PATH   # ruby
export PATH=$HOME/.go/bin:$PATH    # go
export PATH=$HOME/.local/bin:$PATH # user
export PATH=$HOME/.pip/bin:$PATH   # pip
export PATH=$HOME/.yarn/bin:$PATH  # yarn

# fzf
export FZF_DEFAULT_COMMAND='fd --type=file --color=always --follow --hidden'
export FZF_DEFAULT_OPTS='--ansi --inline-info --height 10'

export FZF_ALT_C_COMMAND='fd --type=directory --color=always --follow --no-ignore-vcs'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# lc
export LC_COLLATE='C'

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
