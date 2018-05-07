# editor
export EDITOR=nvim

# paths
export ANTIGEN=$HOME/.antigen
export GOPATH=$HOME/.go

export PATH=$HOME/.go/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.yarn/bin:$PATH

# fzf
export FZF_DEFAULT_OPTS='--inline-info --height 10'

# lc
export LC_COLLATE='C'

# spaceship
export SPACESHIP_PROMPT_ORDER=(
  time
  # user
  dir
  host
  git
  # hg
  package
  node
  # ruby
  # elixir
  # xcode
  # swift
  golang
  php
  # rust
  haskell
  # julia
  docker
  # aws
  venv
  conda
  pyenv
  # dotnet
  # ember
  # kubecontext
  exec_time
  line_sep
  # battery
  # vi_mode
  jobs
  exit_code
  char
)
export SPACESHIP_PROMPT_PREFIXES_SHOW=false

export SPACESHIP_DIR_TRUNC=0
export SPACESHIP_DIR_TRUNC_REPO=false

export SPACESHIP_GIT_SYMBOL='\0'
export SPACESHIP_GIT_STATUS_PREFIX=' '
export SPACESHIP_GIT_STATUS_SUFFIX='\0'

export SPACESHIP_VENV_SYMBOL='🐍 '
