# editor
export EDITOR=vim

# paths
export ANTIGEN=$HOME/.antigen
export CUDA=/opt/cuda
export GOPATH=$HOME/.go
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/cuda/lib64
export NLTK_DATA=$HOME/.nltk_data

export PATH=$HOME/.go/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.yarn/bin:$PATH

# fzf
export FZF_IGNORE_DIRS="__pycache__,node_modules"
export FZF_IGNORE_FILES="$FZF_IGNORE_DIRS,tags"

export FZF_DEFAULT_OPTS=--inline-info
export FZF_DEFAULT_COMMAND='rg --follow --files --no-ignore --glob "!{$FZF_IGNORE_FILES}" 2> /dev/null | head -n 8192'
export FZF_ALT_C_COMMAND='fd --follow --type d --no-ignore --exclude "{$FZF_IGNORE_DIRS}" 2> /dev/null | head -n 4096'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND

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
