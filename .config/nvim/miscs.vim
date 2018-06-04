" markdown
augroup Markdown
    autocmd!
    autocmd Filetype markdown command! -bang MD !md %
    autocmd BufWritePost *.md silent !md -u %
augroup END
