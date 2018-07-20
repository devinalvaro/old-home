augroup Settings
    autocmd!

    " completion
    autocmd InsertLeave * if pumvisible() == 0 | pclose | endif
augroup END

augroup Plugins
    autocmd!

    " ale
    autocmd Filetype c,cpp let b:ale_enabled = 0

    " commentary
    autocmd Filetype c,cpp setlocal commentstring=//%s
    autocmd Filetype sql setlocal commentstring=--%s
augroup END
