# modifier aliases
alias grep='grep  --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'
alias ls='ls --group-directories-first --color=tty'
alias scheme='rlwrap scheme'

# shortener aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias ~='cd ~'
alias pac='trizen'
alias xo='xdg-open'
alias yank='xclip -rmlastnl -selection c'

# git aliases
alias ga='git add'
alias gaa='git add --all'
alias gbr='git branch'
alias gcl='git clone'
alias gcn='git clean'
alias gco='git checkout'
alias gct='git commit'
alias gca='git commit --amend'
alias gcm='git commit -m'
alias gdf='git diff'
alias gdc='git diff --cached'
alias gfe='git fetch'
alias glg='git log'
alias gmr='git merge'
alias gmv='git mv'
alias gp='git push'
alias gpl='git pull'
alias grm='git rm'
alias grs='git reset'
alias grv='git revert'
alias gsh='git stash'
alias gss='git status -s'
alias gsa='git status -s -uall'

# oj aliases
alias ojd='oj d'
alias ojt='oj test 2>&1 | less'

# python aliases
alias py='python'
alias py2='python2'
alias py3='python3'
