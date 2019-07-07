set -x FZF_DEFAULT_OPTS '--ansi --exact --inline-info'
set -x FZF_DEFAULT_OPTS "$FZF_DEFAULT_OPTS --delimiter : --nth -1.."
set -x FZF_DEFAULT_OPTS "$FZF_DEFAULT_OPTS --preview='cat {}' --preview-window=hidden --bind=alt-p:toggle-preview"

if type -q fd;
    set -x FZF_DEFAULT_COMMAND 'fd --type=file --color=always --follow --hidden'
    set -x FZF_DIRECTORY_COMMAND 'fd --type=directory --color=always --follow --no-ignore-vcs'
end

