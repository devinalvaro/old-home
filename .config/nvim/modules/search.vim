" data
let g:which_key_map['s'] = {
            \ 'name': '+search',
            \ '/': 'grep-files',
            \ 'b': 'search-buffers',
            \ 'g': 'grepper-files',
            \ 's': 'search-buffer',
            \ }

" mappings
nnoremap <silent> <leader>s/ :Rg<cr>
nnoremap <silent> <leader>sb :Lines<cr>
nnoremap <silent> <leader>sg :Grepper<cr>
nnoremap <silent> <leader>ss :BLines<cr>
