" calls
call CocMaps()

" autocmds
augroup elixir
    autocmd!
    autocmd BufWritePre *.ex{,s} :call CocAction('format')
augroup END

