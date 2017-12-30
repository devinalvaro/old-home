# editor
export EDITOR="vim"

# paths
export ANTIGEN=$HOME/.antigen
export NLTK_DATA=$HOME/.nltk_data

export GOPATH=$HOME/.go
export LOCAL=$HOME/.local
export YARN=$HOME/.yarn

export PATH=$GOPATH/bin:$LOCAL/bin:$YARN/bin:$PATH

# fzf
export FZF_DEFAULT_OPTS="--inline-info"
export FZF_DEFAULT_COMMAND="rg --files --no-ignore --follow -g '!{.git,node_modules,Sdk}/*' -g '!tags' 2> /dev/null"
export FZF_ALT_C_COMMAND="bfs -L . -mindepth 1 \\( -name 'node_modules' -o -name 'Sdk' \\) -prune \
    -o \\( -path '*/\\.*' -o -fstype 'sysfs' -o -fstype 'devfs' -o -fstype 'devtmpfs' -o -fstype 'proc' \\) -prune \
    -o -type d -print 2> /dev/null | cut -b3-"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# pacman
export PACMAN=trizen

# spaceship
export SPACESHIP_PROMPT_PREFIXES_SHOW=false
export SPACESHIP_DIR_TRUNC=0
export SPACESHIP_GIT_SYMBOL="\0"
