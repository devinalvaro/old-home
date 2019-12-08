" options
let g:dirvish_mode = ':sort ,^.*[\/],'

" autocmds
augroup dirvish
    autocmd!
    autocmd FileType dirvish
                \ nnoremap <buffer> <silent> t :call dirvish#open('tabedit', 0)<CR> |
                \ xnoremap <buffer> <silent> t :call dirvish#open('tabedit', 0)<CR>
augroup END
