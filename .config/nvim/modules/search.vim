" options
let g:which_key_map['s'] = {
            \ 'name': '+search',
            \ '.': 'search-buffer',
            \ 'b': 'search-buffers',
            \ 'g': 'grep-files',
            \ 't': 'search-tags',
            \ }

" mappings
nnoremap <silent> <leader>s. :BLines<cr>
nnoremap <silent> <leader>sb :Lines<cr>
nnoremap <silent> <leader>sg :Rg<cr>
nnoremap <silent> <leader>st :Tags<cr>
