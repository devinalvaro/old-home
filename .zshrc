# tmux
if which tmux >/dev/null 2>&1; then
    test -z "$TMUX" && (tmux attach || tmux new-session)

    while test -z "$TMUX"; do
        exit
    done
fi

# shortcuts
bindkey -s '\en' ' dolphin .\n'
bindkey -s '\er' ' ranger\n'
bindkey -s '\ev' ' vim\n'
bindkey -s '\eh' ' cd\n'

# path
export ZSH=/home/devin/.oh-my-zsh
export GOPATH=$HOME/.gopath/
export PATH=$HOME/.local/bin/:$GOPATH:$GOPATH/bin/:$PATH

# history
setopt histignorespace

# theme
ZSH_THEME="spaceship"

# plugin
plugins=(zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# editor
export EDITOR='nvim'

# program alias
alias py="python"
alias py2="python2"
alias py3="python3"
alias vim="nvim"
alias xb="xbacklight"

# package alias
alias paci="pacaur -S"
alias pacr="pacaur -Rs"
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
alias gte="git remote"
alias gsm="git submodule"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
