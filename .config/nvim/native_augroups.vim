augroup Natives
    autocmd!

    " completion
    autocmd InsertLeave * if pumvisible() == 0 | pclose | endif
augroup END
