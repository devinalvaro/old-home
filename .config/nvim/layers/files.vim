" options
let g:which_key_map['f'] = {
            \ 'name': '+files',
            \ 'f': 'list-files',
            \ 'r': ['edit', 'refresh-file'],
            \ 'n': 'rename-file',
            \ 's': ['write', 'save-file'],
            \ }

" mappings
nnoremap <silent> <leader>ff :<c-u>Files<cr>
