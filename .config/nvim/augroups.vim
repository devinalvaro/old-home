augroup Settings
    autocmd!

    " completion
    autocmd InsertLeave * if pumvisible() == 0 | pclose | endif

    " markdown
    if executable('md')
        autocmd Filetype markdown autocmd BufWritePost <buffer> silent !md -u %
    endif

    " window
    autocmd VimResized * wincmd =
augroup END

augroup Plugins
    autocmd!

    " commentary
    autocmd Filetype c,cpp setlocal commentstring=//%s
    autocmd Filetype sql setlocal commentstring=--%s

    " curtineincsw
    autocmd Filetype c,cpp command! -bang A call CurtineIncSw()

    " delimitmate
    autocmd Filetype clojure,lisp,racket,scheme let g:delimitMate_expand_cr = 1

    " go
    autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
augroup END
