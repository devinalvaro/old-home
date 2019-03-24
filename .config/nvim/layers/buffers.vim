" options
let g:which_key_map['b'] = {
            \ 'name': '+buffers',
            \ 'b': 'list-buffers',
            \ 'd': ['bdelete', 'delete-buffer'],
            \ }

" mappings
nnoremap <silent> <leader><tab> :buffer#<cr>

nnoremap <silent> <leader>bb :<c-u>Buffers<cr>
