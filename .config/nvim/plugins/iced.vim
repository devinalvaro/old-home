" variables
let $PATH = $PATH . ":" . $HOME . "/" . ".config/nvim/plugged/vim-iced/bin"

" autocmds
augroup iced
    autocmd!
    autocmd FileType clojure IcedJackIn
augroup END
