" calls
call CocMaps()

" autocmds
augroup haskell
    autocmd!
    autocmd BufWritePre *.hs :call CocAction('format')
augroup END
