# tmux
if which tmux >/dev/null 2>&1; then
    test -z "$TMUX" && (tmux attach || tmux new-session)

    while test -z "$TMUX"; do
        exit
    done
fi

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
bindkey -s '\eh' 'cd\n'
bindkey -s '\er' 'ranger\n'
bindkey -s '\ev' 'vim\n'

# path
export ZSH=/home/devin/.oh-my-zsh

export GOPATH=$HOME/.gopath
export PATH=$HOME/.local/bin:$GOPATH:$GOPATH/bin:$PATH

# history
setopt histignorespace

# theme
ZSH_THEME="spaceship"

# plugin
plugins=(zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# editor
export EDITOR='vi'

# python alias
alias py="python"
alias py2="python2"
alias py3="python3"

# xdg alias
alias xo="xdg-open"

# package manager alias
alias apti="sudo apt install"
alias apts="sudo apt update"
alias aptu="sudo apt upgrade"
alias aptr="sudo apt remove"
alias aptp="sudo apt purge"
alias apta="sudo apt autoremove"

alias dnfs="sudo dnf search"
alias dnfi="sudo dnf install"
alias dnfu="sudo dnf upgrade"
alias dnfr="sudo dnf remove"
alias dnfc="sudo dnf clean"
alias dnfa="sudo dnf autoremove"

# git alias
alias gcl="git clone"
alias gst="git status"
alias gss="git status -s"
alias gsa="git status -s -uall"
alias glg="git log"
alias grs="git reset"
alias gco="git checkout"
alias gd="git diff"
alias gdc="git diff --cached"
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
