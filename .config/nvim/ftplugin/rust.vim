" calls
call CocMaps()

" autocmds
augroup rust
    autocmd!
    autocmd BufWritePre *.rs :call CocAction('format')
augroup END
