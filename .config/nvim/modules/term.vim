" data
let g:which_key_map['t'] = {
            \ 'name': '+term',
            \ 'c': 'close-term',
            \ 'e': 'term-exec',
            \ 'f': 'trepl-file',
            \ 'g': 'toggle-term',
            \ 'k': 'term-kill',
            \ 'l': 'term-clear',
            \ 'o': 'open-term',
            \ 's': 'split-term',
            \ 't': 'term-t',
            \ 'v': 'vert-term',
            \ }

" mappings
tnoremap <esc> <c-\><c-n>
tnoremap <c-\><c-n> <esc>

nnoremap <silent> <leader>tc :<c-u>execute v:count . 'Tclose'<cr>
nnoremap <silent> <leader>te :<c-u>execute v:count . 'Texec<space>
nnoremap <silent> <leader>tf :<c-u>execute v:count . 'TREPLSendFile'<cr>
nnoremap <silent> <leader>tg :<c-u>execute v:count . 'Ttoggle'<cr>
nnoremap <silent> <leader>tk :<c-u>execute v:count . 'Tkill'<cr>
nnoremap <silent> <leader>tl :<c-u>execute v:count . 'Tclear'<cr>
nnoremap <silent> <leader>to :<c-u>execute v:count . 'Topen'<cr>
nnoremap <silent> <leader>ts :belowright Tnew<cr>
nnoremap <silent> <leader>tt :<c-u>execute v:count . 'T<space>
nnoremap <silent> <leader>tv :vertical Tnew<cr>
