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
export FZF_DEFAULT_COMMAND='rg --follow --files --no-ignore --glob "!{node_modules/*,Sdk/*,tags}" 2> /dev/null'
export FZF_ALT_C_COMMAND='fd --follow --type d --no-ignore --exclude "{node_modules,Sdk}" 2> /dev/null'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND

# spaceship
export SPACESHIP_PROMPT_PREFIXES_SHOW=false
export SPACESHIP_DIR_TRUNC=0
export SPACESHIP_GIT_SYMBOL='\0'
export SPACESHIP_GIT_STATUS_PREFIX=' '
export SPACESHIP_GIT_STATUS_SUFFIX='\0'
