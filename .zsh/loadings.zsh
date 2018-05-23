function lazy_load() {
    # $1: space separated list of alias to release after the first load
    # $2: file to source
    # $3: name of the command to run after it's loaded
    # $4+: argv to be passed to $3

    local -a names
    names=("${(@s: :)${1}}")

    unalias "${names[@]}"
    . $2

    shift 2
    $*
}

function group_lazy_load() {
    local script
    script=$1

    shift 1
    for cmd in "$@"; do
        alias $cmd="lazy_load \"$*\" $script $cmd"
    done
}

# nvm
group_lazy_load /usr/share/nvm/init-nvm.sh node npm nvm truffle yarn

# rvm
group_lazy_load /usr/share/rvm/scripts/rvm irb rails rake ruby rvm
