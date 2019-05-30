type -q vi   && set -x EDITOR 'vi'
type -q vim  && set -x EDITOR 'vim'
type -q nvim && set -x EDITOR 'nvim'

if set -q TMUX;
    if set -q NVIM_LISTEN_ADDRESS; and type -q nvr;
        set -x EDITOR 'nvr'
        set -x GIT_EDITOR "$EDITOR --remote-wait"
    else
        $EDITOR
    end
end
