" data
let g:which_key_map['b'] = {
            \ 'name': '+buffer',
            \ 'b': 'list-buffers',
            \ 'd': 'delete-buffer',
            \ 'r': 'refresh-buffer',
            \ 's': 'new-buffer-below',
            \ 'v': 'new-buffer-right',
            \ 'w': 'strip-buffer-whitespace',
            \ }

" mappings
nnoremap <silent> <leader>bb :Buffers<cr>
nnoremap <silent> <leader>bd :bdelete<cr>
nnoremap <silent> <leader>br :edit<cr>
nnoremap <silent> <leader>bs :new<cr>
nnoremap <silent> <leader>bv :vertical new<cr>
nnoremap <silent> <leader>bw :StripWhitespace<cr>

xnoremap <silent> <leader>bw :StripWhitespace<cr>
