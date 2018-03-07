# modifier aliases
alias grep='grep  --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}'
alias http='http --style=bw'
alias ls='ls --group-directories-first --color=tty'

# shortener aliases
alias pac='trizen'
alias paste='xclip -o -selection clipboard'
alias xo='xdg-open'
alias yank='xclip -i -selection clipboard -rmlastnl'

# navigation aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias ~='cd ~'

## alias groups ##

# git
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

# online-judge-tools
alias ojc='rm -rf a.out test'
alias ojd='oj download'
alias ojt='oj test 2>&1 | less'
alias ojs='oj submit'

# python
alias py='python'
alias py2='python2'
alias py3='python3'
