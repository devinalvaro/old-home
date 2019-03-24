" options
let g:which_key_map['<tab>'] = 'last-buffer'

let g:which_key_map['b'] = {
            \ 'name': '+buffers',
            \ 'b': 'list-buffers',
            \ 'd': 'delete-buffer',
            \ }

" mappings
nnoremap <silent> <leader><tab> :buffer#<cr>

nnoremap <silent> <leader>bb :Buffers<cr>
nnoremap <silent> <leader>bd :bdelete<cr>
