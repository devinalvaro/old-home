" options
let g:which_key_map['t'] = {
            \ 'name': '+term',
            \ 'c': 'close-term',
            \ 'e': 'term-exec',
            \ 'g': 'toggle-term',
            \ 'k': 'term-kill',
            \ 'l': 'term-clear',
            \ 'n': 'new-term',
            \ 'o': 'open-term',
            \ 't': 'term-t',
            \ }

" mappings
nnoremap <silent> <leader>tc :<c-u>exec v:count.'Tclose'<cr>
nnoremap <silent> <leader>te :<c-u>exec v:count.'Texec<space>
nnoremap <silent> <leader>tg :<c-u>exec v:count.'Ttoggle'<cr>
nnoremap <silent> <leader>tk :<c-u>exec v:count.'Tkill'<cr>
nnoremap <silent> <leader>tl :<c-u>exec v:count.'Tclear'<cr>
nnoremap <silent> <leader>tn :<c-u>Tnew<cr>
nnoremap <silent> <leader>to :<c-u>exec v:count.'Topen'<cr>
nnoremap          <leader>tt :<c-u>exec v:count.'T<space>
