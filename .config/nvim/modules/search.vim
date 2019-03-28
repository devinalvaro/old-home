" data
let g:which_key_map['s'] = {
            \ 'name': '+search',
            \ 'b': 'search-buffers',
            \ 'g': 'grep-files',
            \ 's': 'search-buffer',
            \ 't': 'search-tags',
            \ }

" mappings
nnoremap <silent> <leader>sb :Lines<cr>
nnoremap <silent> <leader>sg :Rg<cr>
nnoremap <silent> <leader>ss :BLines<cr>
nnoremap <silent> <leader>st :Tags<cr>
