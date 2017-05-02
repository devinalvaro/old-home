# tmux
if which tmux >/dev/null 2>&1; then
    test -z "$TMUX" && (tmux attach || tmux new-session)

    while test -z "$TMUX"; do
        exit
    done
fi

# path
export PATH=$HOME/.local/bin/:$PATH
export GOPATH=$HOME/.gopath
export PATH=$GOPATH:$GOPATH/bin/:$PATH

# oh-my-zsh
export ZSH=/home/devin/.oh-my-zsh

# history
setopt histignorespace

# theme
ZSH_THEME="spaceship"

# plugin
plugins=(wd zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# editor
export EDITOR='nvim'

# program alias
alias lp="dolphin ."
alias ng="ranger"
alias py="python"
alias py2="python2"
alias py3="python3"
alias vim="nvim"
alias xb="xbacklight"

# package alias
alias paci="pacaur -S"
alias pacr="pacaur -R"
alias pacs="pacaur -Syy"
alias pacu="pacaur -Syu"
alias pacc="pacaur -Sc"
alias paca="pacaur -Rns $(pacaur -Qtdq)"

# git alias
alias gcl="git clone"
alias gst="git status"
alias gs="git status -sb"
alias glg="git log"
alias grs="git reset"
alias gco="git checkout"
alias gd="git diff"
alias ga="git add"
alias grm="git rm"
alias gmv="git mv"
alias gp="git push"
alias gpl="git pull"
alias gct="git commit"
alias gcm="git commit -m"
alias grt"git remote"
alias gsm="git submodule"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
