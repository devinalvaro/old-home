" calls
call CocMaps()

" autocmds
augroup go
    autocmd!
    autocmd BufWritePre *.go :call CocAction('organizeImport') | call CocAction('format')
augroup END
