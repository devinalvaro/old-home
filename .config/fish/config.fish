set fish_greeting

# functions
function edit
    if type -q nvr; and set -q NVIM_LISTEN_ADDRESS;
        nvr $argv
    else
        $EDITOR $argv
    end
end

# abbreviations
abbr -a c cargo
abbr -a d docker
abbr -a e edit
abbr -a g git
abbr -a l 'ls -l'
abbr -a o open
abbr -a p python
abbr -a s stack

if type -q exa;
    abbr -a l 'exa -l'
end

# paths
set -x GOPATH "$HOME/.go"
set -x PYTHONUSERBASE "$HOME/.pip"

set -x PATH "$HOME/.cargo/bin:$PATH"
set -x PATH "$HOME/.fzf/bin:$PATH"
set -x PATH "$HOME/.go/bin:$PATH"
set -x PATH "$HOME/.lein/bin:$PATH"
set -x PATH "$HOME/.local/bin:$PATH"
set -x PATH "$HOME/.pip/bin:$PATH"
set -x PATH "$HOME/.yarn/bin:$PATH"

# variables
set -x LANG "en_US.UTF-8"
set -x LANGUAGE "en_US.UTF-8"
set -x LC_ALL "en_US.UTF-8"

if type -q nvim;
    set -x EDITOR 'nvim'
end
