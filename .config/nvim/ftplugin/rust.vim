" calls
call CocMaps()

" mappings
nnoremap <buffer> <silent> <localleader><localleader>t :CocCommand rust-analyzer.toggleInlayHints<cr>

" autocmds
augroup rust
    autocmd!
    autocmd BufWritePre *.rs :call CocAction('format')
augroup END
