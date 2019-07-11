set fish_greeting

# abbr
abbr -a c cargo
abbr -a d docker
abbr -a g git
abbr -a p python
abbr -a s sudo
abbr -a v "$EDITOR"

abbr -a dc docker-compose
abbr -a xo xdg-open

if type -q xclip;
    abbr -a paste 'xclip -out -selection clipboard'
    abbr -a yank 'xclip -in -selection clipboard'
end

# locale
set -x LANG "en_US.UTF-8"
set -x LANGUAGE "en_US.UTF-8"
set -x LC_ALL "en_US.UTF-8"

# path
set -x GOPATH "$HOME/.go"
set -x PYTHONUSERBASE "$HOME/.pip"

set -x PATH "$HOME/.cargo/bin:$PATH"
set -x PATH "$HOME/.fzf/bin:$PATH"
set -x PATH "$HOME/.go/bin:$PATH"
set -x PATH "$HOME/.local/bin:$PATH"
set -x PATH "$HOME/.pip/bin:$PATH"
