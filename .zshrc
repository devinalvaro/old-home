# path
export PATH=$HOME/.local/bin/:$PATH
export GOPATH=$HOME/.gopath
export PATH=$GOPATH:$GOPATH/bin:$PATH

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
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vi'
else
  export EDITOR='nvim'
fi

# program alias
alias na="nautilus ."
alias ra="ranger"
alias py="python3"
alias py2="python2"
alias xb="xbacklight"

# package alias
alias dnfu="sudo dnf upgrade"
alias dnfi="sudo dnf install"
alias dnfr="sudo dnf remove"
alias dnfa="sudo dnf autoremove"

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

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
