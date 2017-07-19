# tmux
if which tmux >/dev/null 2>&1; then
    test -z "$TMUX" && (tmux attach || tmux new-session)

    while test -z "$TMUX"; do
        exit
    done
fi

# pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# function
function ranger {
    tempfile="$(mktemp -t tmp.XXXXXX)"
    /usr/bin/ranger --choosedir="$tempfile" "${@:-$(pwd)}"
    test -f "$tempfile" &&
    if [ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]; then
        cd -- "$(cat "$tempfile")"
    fi
    rm -f -- "$tempfile"
}

# key binding
bindkey -s '\er' 'ranger\n'
bindkey -s '\ev' 'vim\n'
bindkey -s '\eh' 'cd\n'

# path
export ZSH=/home/devin/.oh-my-zsh

export GOPATH=$HOME/.gopath/
export PATH=$PATH:$HOME/.local/bin/:$GOPATH:$GOPATH/bin/

# history
setopt histignorespace

# theme
ZSH_THEME="spaceship"

# plugin
plugins=(zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# editor
export EDITOR='nvim'

# python alias
alias py="python"
alias py2="python2"
alias py3="python3"

# package manager alias
alias apti="sudo apt install"
alias aptr="sudo apt remove"
alias aptp="sudo apt purge"
alias apts="sudo apt update"
alias aptu="sudo apt upgrade"
alias apta="sudo apt autoremove"

# git alias
alias gcl="git clone"
alias gst="git status"
alias gss="git status -s"
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
alias gbr="git branch"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
