" calls
call CocMaps()

" autocmds
augroup python
    autocmd!
    autocmd BufWritePre *.py :call CocAction('format')
augroup END
