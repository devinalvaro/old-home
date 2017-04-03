# oh-my-zsh
export ZSH=/home/devin/.oh-my-zsh

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
alias vim="nvim"
alias xb="xbacklight"

# shell alias
alias autosetup="~/.local/bin/autosetup.sh"
alias gitignore="~/.local/bin/gitignore.sh"
alias makegen="~/.local/bin/makegen.sh"
alias truecolor="~/.local/bin/truecolor.sh"

# fedora alias
alias dnfu="sudo dnf upgrade"
alias dnfi="sudo dnf install"
alias dnfr="sudo dnf remove"
alias dnfa="sudo dnf autoremove"

# git alias
alias gcl="git clone"
alias gst="git status"
alias gs="git status -sb"
alias glg="git log"
alias grs="gir reset"
alias gco="git checkout"
alias gdf="git diff"
alias ga="git add"
alias grm="git rm"
alias gmv="git mv"
alias gps="git push"
alias gpl="git pull"
alias gct="git commit"
alias gcm="git commit -m"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
