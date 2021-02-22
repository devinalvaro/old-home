" calls
call CocMaps()

" autocmds
augroup typescript
    autocmd!
    autocmd BufWritePre *.{ts,x} :call CocAction('format')
augroup END
