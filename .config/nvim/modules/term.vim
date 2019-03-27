" options
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
tnoremap <c-v><esc> <esc>

nnoremap <silent> <leader>tc :execute v:count . 'Tclose'<cr>
nnoremap <silent> <leader>te :execute v:count . 'Texec<space>
nnoremap <silent> <leader>tf :execute v:count . 'TREPLSendFile'<cr>
nnoremap <silent> <leader>tg :execute v:count . 'Ttoggle'<cr>
nnoremap <silent> <leader>tk :execute v:count . 'Tkill'<cr>
nnoremap <silent> <leader>tl :execute v:count . 'Tclear'<cr>
nnoremap <silent> <leader>to :execute v:count . 'Topen'<cr>
nnoremap <silent> <leader>ts :split Tnew<cr>
nnoremap <silent> <leader>tt :execute v:count . 'T<space>
nnoremap <silent> <leader>tv :vertical Tnew<cr>
