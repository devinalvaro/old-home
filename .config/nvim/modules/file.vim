" data
let g:which_key_map['f'] = {
            \ 'name': '+file',
            \ '.': 'edit-on-file-dir',
            \ 'e': 'edit-file',
            \ 'f': 'list-files',
            \ 'r': 'rename-file',
            \ 's': 'save-file',
            \ 'w': 'write-file',
            \ }

" mappings
nnoremap          <leader>f. :edit %:p:h/
nnoremap          <leader>fe :edit<space>
nnoremap <silent> <leader>ff :Files<cr>
nnoremap          <leader>fr :Rename<space>
nnoremap <silent> <leader>fs :write<cr>
nnoremap          <leader>fw :write<space>

xnoremap <silent> <leader>fs :write<cr>
