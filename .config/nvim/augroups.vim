augroup Settings
    autocmd!

    " completion
    autocmd InsertLeave * if pumvisible() == 0 | pclose | endif

    " window
    autocmd VimResized * wincmd =
augroup END

augroup Plugins
    autocmd!

    " ale
    autocmd Filetype c,cpp let b:ale_enabled = 0

    " commentary
    autocmd Filetype c,cpp setlocal commentstring=//%s
    autocmd Filetype sql setlocal commentstring=--%s

    " curtineincsw
    autocmd Filetype c,cpp command! -bang A call CurtineIncSw()

    " delimitmate
    autocmd Filetype clojure,lisp,racket,scheme let b:delimitMate_expand_cr = 1

    " go
    autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
augroup END
