" autocmds
augroup Commentary
    autocmd!
    autocmd Filetype c,cpp setlocal commentstring=//%s
    autocmd Filetype sql setlocal commentstring=--%s
augroup END
