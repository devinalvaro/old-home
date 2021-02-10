" calls
call CocMaps()

" autocmds
augroup typescript
    autocmd!
    autocmd BufWritePre *.ts :call CocAction('format')
augroup END

