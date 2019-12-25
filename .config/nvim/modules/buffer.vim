" data
let g:which_key_map['b'] = {
            \ 'name': '+buffer',
            \ '/': 'list-buffers',
            \ 'd': 'delete-buffer',
            \ 'r': 'refresh-buffer',
            \ 's': 'scratch-buffer',
            \ 'w': 'strip-buffer-whitespace',
            \ }

" abbrevs
cnoreabbrev bdo bufdo

" mappings
nnoremap <silent> <leader>b/ :Buffers<cr>
nnoremap <silent> <leader>bd :Bdelete!<cr>
nnoremap <silent> <leader>br :edit<cr>
nnoremap <silent> <leader>bs :edit /tmp/scratch.clj<cr>
nnoremap <silent> <leader>bw :StripWhitespace<cr>
