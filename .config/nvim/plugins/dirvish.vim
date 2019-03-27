" options
let g:dirvish_mode = ':sort ,^.*[\/],'

" autocmds
augroup Dirvish
    autocmd!
    autocmd FileType dirvish
                \ nnoremap <silent><buffer> t :call dirvish#open('tabedit', 0)<CR> |
                \ xnoremap <silent><buffer> t :call dirvish#open('tabedit', 0)<CR>
    autocmd FileType dirvish nnoremap <silent><buffer>
                \ gh :silent keeppatterns g@\v/\.[^\/]+/?$@d _<cr>:setl cole=3<cr>
augroup END
