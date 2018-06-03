" markdown
augroup Markdown
    autocmd!
    autocmd Filetype markdown command! -bang MD !md %
    autocmd BufWritePost * silent !md -u %
augroup END
