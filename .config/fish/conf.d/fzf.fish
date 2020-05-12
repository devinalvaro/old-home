set -x FZF_DEFAULT_OPTS '--ansi --inline-info'

if type -q fd;
    set -x FZF_DEFAULT_COMMAND 'fd --type=file --color=always --follow --hidden'
    set -x FZF_DIRECTORY_COMMAND 'fd --type=directory --color=always --follow --no-ignore-vcs'
end
