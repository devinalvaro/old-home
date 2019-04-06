" data
let g:which_key_map['f'] = {
            \ 'name': '+file',
            \ '.': 'edit-on-file-dir',
            \ 'e': 'edit-file',
            \ 'f': 'list-files',
            \ 's': 'save-file',
            \ }

" mappings
nnoremap          <leader>f. :edit %:p:h/
nnoremap          <leader>fe :edit<space>
nnoremap <silent> <leader>ff :Files<cr>
nnoremap <silent> <leader>fs :write<cr>

xnoremap <silent> <leader>fs :write<cr>
