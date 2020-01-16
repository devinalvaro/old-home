set fish_greeting

# abbreviations
abbr -a c cargo
abbr -a d docker
abbr -a e edit
abbr -a g git
abbr -a l 'ls -l'
abbr -a p python
abbr -a s sudo
abbr -a x xdg-open
abbr -a z zypper

if type -q xclip;
    abbr -a yank 'xclip -in -selection clipboard'
    abbr -a paste 'xclip -out -selection clipboard'
end

# functions
function edit
    if type -q nvr and set -q NVIM_LISTEN_ADDRESS;
        nvr $argv
    else
        $EDITOR $argv
    end
end

# paths
set -x GOPATH "$HOME/.go"
set -x PYTHONUSERBASE "$HOME/.pip"

set -x PATH "$HOME/.cargo/bin:$PATH"
set -x PATH "$HOME/.fzf/bin:$PATH"
set -x PATH "$HOME/.go/bin:$PATH"
set -x PATH "$HOME/.local/bin:$PATH"
set -x PATH "$HOME/.pip/bin:$PATH"

# variables
set -x LANG "en_US.UTF-8"
set -x LANGUAGE "en_US.UTF-8"
set -x LC_ALL "en_US.UTF-8"

if type -q nvim;
    set -x EDITOR 'nvim'
end
