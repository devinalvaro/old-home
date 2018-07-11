function lazy_load() {
    # $1: space separated list of alias to release after the first load
    # $2: file to source
    # $3: name of the command to run after it's loaded
    # $4+: argv to be passed to $3

    local -a names=("${(@s: :)${1}}")
    unalias "${names[@]}"

    . $2 && . $3

    shift 3
    $*
}

function group_lazy_load() {
    local script=$1
    local completion=$2
    shift 1
    for cmd in "$@"; do
        alias $cmd="lazy_load \"$*\" $script $completion $cmd"
    done
}

# nvm
group_lazy_load "$HOME/.nvm/nvm.sh" "$HOME/.nvm/bash_completion" nvm

# rvm
group_lazy_load "$HOME/.rvm/scripts/rvm" "$HOME/.rvm/scripts/completion" rvm
