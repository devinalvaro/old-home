# tmux
if which tmux >/dev/null 2>&1; then
    test -z "$TMUX" && (tmux attach || tmux new-session)

    while test -z "$TMUX"; do
        exit
    done
fi

# environment variables
export ANTIGEN=$HOME/.antigen
export LOCAL=$HOME/.local
export NLTK_DATA=$HOME/.nltk_data
export YARN=$HOME/.yarn

# path
export PATH=$LOCAL/bin:$YARN/bin:$PATH

# editor
export EDITOR="vim"

# spaceship
export SPACESHIP_PROMPT_PREFIXES_SHOW=false
export SPACESHIP_DIR_TRUNC=0
export SPACESHIP_GIT_SYMBOL="\0"

# antigen
[ -f $ANTIGEN/antigen.zsh ] && source $ANTIGEN/antigen.zsh

antigen use oh-my-zsh
antigen bundle tarruda/zsh-autosuggestions
antigen theme denysdovhan/spaceship-zsh-theme spaceship
antigen apply

# fzf
export FZF_DEFAULT_OPTS="--inline-info"
export FZF_DEFAULT_COMMAND="rg --files --no-ignore --follow -g '!{.git,node_modules,Sdk}/*' -g '!tags' 2> /dev/null"
export FZF_ALT_C_COMMAND="bfs -L . -mindepth 1 \\( -name 'node_modules' -o -name 'Sdk' \\) -prune \
    -o \\( -path '*/\\.*' -o -fstype 'sysfs' -o -fstype 'devfs' -o -fstype 'devtmpfs' -o -fstype 'proc' \\) -prune \
    -o -type d -print 2> /dev/null | cut -b3-"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

# function
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

# key binding
bindkey -s '\eh' '~\n'
bindkey -s '\ev' 'vim\n'

# general alias
alias ls='ls -v --group-directories-first --color=tty'
alias xo='xdg-open'

# python alias
alias py='python'
alias py2='python2'
alias py3='python3'

# pacaur alias
alias paca='pacaur -Rns $(pacaur -Qdtq)'
alias paci='pacaur -S --needed'
alias pacr='pacaur -Rns'
alias pacs='pacaur -Ss'
alias pacu='pacaur -Syu --needed'

# git alias
alias ga='git add'
alias gaa='git add -A'
alias gbr='git branch'
alias gcn='git clean'
alias gcl='git clone'
alias gco='git checkout'
alias gct='git commit'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias gd='git diff'
alias gdc='git diff --cached'
alias glg='git log'
alias gmv='git mv'
alias gpl='git pull'
alias gp='git push'
alias grs='git reset'
alias gss='git status -s'
alias gsa='git status -s -uall'
alias grm='git rm'
alias gsh='git stash'
alias gsm='git submodule'
alias gst='git subtree'
