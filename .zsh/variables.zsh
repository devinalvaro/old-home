# editor
export EDITOR=vim

# paths
export ANTIGEN=$HOME/.antigen
export NLTK_DATA=$HOME/.nltk_data

export COMPOSER_HOME=$HOME/.config/composer
export GOPATH=$HOME/.go
export LOCAL=$HOME/.local
export YARN=$HOME/.yarn

export PATH=$COMPOSER_HOME/vendor/bin:$GOPATH/bin:$LOCAL/bin:$YARN/bin:$PATH

# fzf
export FZF_DEFAULT_OPTS=--inline-info
export FZF_DEFAULT_COMMAND='rg --follow --files --no-ignore --maxdepth 8 --glob "!{node_modules/*,Sdk/*,tags}" 2> /dev/null'
export FZF_ALT_C_COMMAND='fd --follow --type d --no-ignore --max-depth 8 --exclude "{node_modules,Sdk}" 2> /dev/null'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND

# lc
export LC_COLLATE='C'

# spaceship
export SPACESHIP_PROMPT_ORDER=(
  time # Time stampts section
  # user # Username section
  dir # Current directory section
  host # Hostname section
  git # Git section (git_branch + git_status)
  # hg # Mercurial section (hg_branch  + hg_status)
  package # Package version
  node # Node.js section
  # ruby # Ruby section
  # elixir # Elixir section
  # xcode # Xcode section
  # swift # Swift section
  golang # Go section
  php # PHP section
  # rust # Rust section
  haskell # Haskell Stack section
  # julia # Julia section
  docker # Docker section
  # aws # Amazon Web Services section
  venv # virtualenv section
  conda # conda virtualenv section
  pyenv # Pyenv section
  # dotnet # .NET section
  # ember # Ember.js section
  # kubecontext # Kubectl context section
  exec_time # Execution time
  line_sep # Line break
  # battery # Battery level and status
  # vi_mode # Vi-mode indicator
  jobs # Background jobs indicator
  exit_code # Exit code section
  char # Prompt character
)
export SPACESHIP_PROMPT_PREFIXES_SHOW=false
export SPACESHIP_DIR_TRUNC=0
export SPACESHIP_DIR_TRUNC_REPO=false
export SPACESHIP_GIT_SYMBOL='\0'
export SPACESHIP_GIT_STATUS_PREFIX=' '
export SPACESHIP_GIT_STATUS_SUFFIX='\0'
