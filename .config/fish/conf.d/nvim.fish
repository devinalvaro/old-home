type -q vi  ; and set -x EDITOR 'vi'
type -q vim ; and set -x EDITOR 'vim'
type -q nvim; and set -x EDITOR 'nvim'

if set -q NVIM_LISTEN_ADDRESS; and type -q nvr;
    set -x EDITOR 'nvr'
    set -x GIT_EDITOR "$EDITOR --remote-wait"
end
