# tmux
if which tmux >/dev/null 2>&1; then
    test -z "$TMUX" && (tmux attach || tmux new-session)

    while test -z "$TMUX"; do
        exit
    done
fi

# ranger
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
bindkey -s '\ea' '; echo -e \"\\a\"\n'
bindkey -s '\eh' '~\n'
bindkey -s '\er' 'ranger\n'
bindkey -s '\ev' 'vim\n'

# path
export PATH=$HOME/.local/bin:$HOME/.cargo/bin:$PATH

# env variables
export NLTK_DATA=/home/devin/.nltk-data
export ZSH=/home/devin/.oh-my-zsh

# editor
export EDITOR="vim"

# fzf
export FZF_DEFAULT_OPTS="--inline-info"
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --follow -g "!{.git,node_modules,SDK}/*" -g "!tags" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# zsh plugin
plugins=(zsh-autosuggestions)

# zsh theme
export ZSH_THEME="spaceship"
export SPACESHIP_PACKAGE_SHOW="false"

# zsh
source $ZSH/oh-my-zsh.sh

# python alias
alias py="python"
alias py2="python2"
alias py3="python3"

# xdg alias
alias xo="xdg-open"

# apt alias
alias apti="sudo apt install"
alias apts="sudo apt update"
alias aptu="sudo apt upgrade"
alias aptr="sudo apt remove"
alias aptp="sudo apt purge"
alias apta="sudo apt autoremove"

# dnf alias
alias dnfs="sudo dnf search"
alias dnfi="sudo dnf install"
alias dnfu="sudo dnf upgrade"
alias dnfr="sudo dnf remove"
alias dnfc="sudo dnf clean"
alias dnfa="sudo dnf autoremove"

# git alias
alias gcl="git clone"
alias gss="git status -s"
alias gsa="git status -s -uall"
alias gsba="git status -sb -uall"
alias glg="git log"
alias grs="git reset"
alias gco="git checkout"
alias gd="git diff"
alias gdc="git diff --cached"
alias ga="git add"
alias gaa="git add -A"
alias grm="git rm"
alias gmv="git mv"
alias gp="git push"
alias gpl="git pull"
alias gct="git commit"
alias gcm="git commit -m"
alias gca="git commit --amend"
alias gsm="git submodule"
alias gbr="git branch"
alias gcn="git clean"
