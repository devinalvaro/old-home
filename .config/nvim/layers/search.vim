" options
let g:which_key_map['s'] = {
            \ 'name': '+search',
            \ 'g': 'grep-files',
            \ 't': 'search-tags',
            \ }

" mappings
nnoremap <silent> <leader>sg :Rg<cr>
nnoremap <silent> <leader>st :Tags<cr>
