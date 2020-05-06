" data
let g:which_key_map['b'] = {
            \ 'name': '+buffer',
            \ 'd': 'delete-buffer',
            \ 'w': 'strip-buffer-whitespace',
            \ }

" abbrevs
cnoreabbrev bdo bufdo

" mappings
nnoremap <silent> <s-tab> :Buffers<cr>

nnoremap <silent> <leader>bd :Bdelete!<cr>
nnoremap <silent> <leader>bw :StripWhitespace<cr>
