if type -q xclip;
    alias paste 'xclip -out -selection clipboard'
    alias yank 'xclip -in -selection clipboard'
end
