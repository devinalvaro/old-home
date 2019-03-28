" data
let g:which_key_map['b'] = {
            \ 'name': '+buffer',
            \ '=': 'format-buffer',
            \ 'b': 'list-buffers',
            \ 'r': 'refresh-buffer',
            \ 'd': 'delete-buffer',
            \ 's': 'strip-buffer-whitespace',
            \ }

" mappings
nnoremap <silent> <leader>b= :Neoformat<cr>
nnoremap <silent> <leader>bb :Buffers<cr>
nnoremap <silent> <leader>bd :bdelete<cr>
nnoremap <silent> <leader>br :edit<cr>
nnoremap <silent> <leader>bs :StripWhitespace<cr>

xnoremap <silent> <leader>bs :StripWhitespace<cr>
