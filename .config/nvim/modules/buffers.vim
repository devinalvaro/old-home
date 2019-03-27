" options
let g:which_key_map['b'] = {
            \ 'name': '+buffers',
            \ 'b': 'list-buffers',
            \ 'r': 'refresh-buffer',
            \ 'd': 'delete-buffer',
            \ }

" mappings
nnoremap <silent> <leader>bb :Buffers<cr>
nnoremap <silent> <leader>bd :bdelete<cr>
nnoremap <silent> <leader>br :edit<cr>
