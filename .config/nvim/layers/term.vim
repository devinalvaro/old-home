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
nnoremap <silent> <leader>tc :exec v:count.'Tclose'<cr>
nnoremap          <leader>te :exec v:count.'Texec<space>
nnoremap <silent> <leader>tg :exec v:count.'Ttoggle'<cr>
nnoremap <silent> <leader>tk :exec v:count.'Tkill'<cr>
nnoremap <silent> <leader>tl :exec v:count.'Tclear'<cr>
nnoremap <silent> <leader>tn :Tnew<cr>
nnoremap <silent> <leader>to :exec v:count.'Topen'<cr>
nnoremap          <leader>tt :exec v:count.'T<space>
