" options
let g:neoterm_autoscroll = 1
let g:neoterm_default_mod = ':belowright'
let g:neoterm_term_per_tab = 1

" mappings
nnoremap <leader>tc :<c-u>exec v:count.'Tclose'<cr>
nnoremap <leader>te :<c-u>exec v:count.'Texec<space>
nnoremap <leader>tg :<c-u>exec v:count.'Ttoggle'<cr>
nnoremap <leader>tk :<c-u>exec v:count.'Tkill'<cr>
nnoremap <leader>tl :<c-u>exec v:count.'Tclear'<cr>
nnoremap <leader>tn :<c-u>Tnew<cr>
nnoremap <leader>to :<c-u>exec v:count.'Topen'<cr>
nnoremap <leader>tt :<c-u>exec v:count.'T<space>

xnoremap <leader>tc :<c-u>exec v:count.'Tclose'<cr>
xnoremap <leader>te :<c-u>exec v:count.'Texec<space>
xnoremap <leader>tg :<c-u>exec v:count.'Ttoggle'<cr>
xnoremap <leader>tk :<c-u>exec v:count.'Tkill'<cr>
xnoremap <leader>tl :<c-u>exec v:count.'Tclear'<cr>
xnoremap <leader>tn :<c-u>Tnew<cr>
xnoremap <leader>to :<c-u>exec v:count.'Topen'<cr>
xnoremap <leader>tt :<c-u>exec v:count.'T<space>
