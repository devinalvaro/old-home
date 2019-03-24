" options
let g:which_key_map['f'] = {
            \ 'name': '+files',
            \ 'e': 'edit-file',
            \ 'f': 'list-files',
            \ 'r': 'refresh-file',
            \ 's': 'save-file',
            \ }

" mappings
nnoremap          <leader>fe :edit<space>
nnoremap <silent> <leader>ff :Files<cr>
nnoremap <silent> <leader>fr :edit<cr>
nnoremap <silent> <leader>fs :write<cr>
