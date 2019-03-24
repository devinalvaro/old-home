" options
let g:which_key_map['m'] = {
            \ 'name': '+mode',
            \ '=': 'format-buffer',
            \ }

" mappings
nnoremap <silent> <leader>m= :Neoformat<cr>
