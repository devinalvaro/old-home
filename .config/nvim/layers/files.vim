" options
let g:which_key_map['f'] = {
            \ 'name': '+files',
            \ 'e': 'edit-file',
            \ 'f': 'list-files',
            \ 'r': ['edit', 'refresh-file'],
            \ 'n': 'rename-file',
            \ 's': ['write', 'save-file'],
            \ }

" mappings
nnoremap          <leader>fe :<c-u>edit<space>
nnoremap <silent> <leader>ff :<c-u>Files<cr>
nnoremap          <leader>fn :<c-u>Rename<space>
