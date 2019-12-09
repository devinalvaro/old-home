" data
let g:which_key_map['b'] = {
            \ 'name': '+buffer',
            \ '/': 'list-buffers',
            \ 'D': 'delete-buffer!',
            \ 'd': 'delete-buffer',
            \ 'n': 'new-buffer',
            \ 'r': 'refresh-buffer',
            \ 's': 'new-buffer-below',
            \ 'v': 'new-buffer-right',
            \ 'w': 'strip-buffer-whitespace',
            \ }

" mappings
nnoremap <silent> <leader>b/ :Buffers<cr>
nnoremap <silent> <leader>bD :Bdelete!<cr>
nnoremap <silent> <leader>bd :Bdelete<cr>
nnoremap <silent> <leader>bn :enew<cr>
nnoremap <silent> <leader>br :edit<cr>
nnoremap <silent> <leader>bs :new<cr>
nnoremap <silent> <leader>bv :vertical new<cr>
nnoremap <silent> <leader>bw :StripWhitespace<cr>

xnoremap <silent> <leader>bw :StripWhitespace<cr>

" abbrevs
cnoreabbrev bdo bufdo
