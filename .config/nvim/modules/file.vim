" data
let g:which_key_map['f'] = {
            \ 'name': '+file',
            \ '.': 'edit-on-file-dir',
            \ '/': 'list-files',
            \ 'e': 'edit-file',
            \ 'r': 'rename-file',
            \ 's': 'save-file',
            \ 'w': 'write-file',
            \ }

" mappings
nnoremap          <leader>f. :edit %:p:h/
nnoremap <silent> <leader>f/ :Files<cr>
nnoremap          <leader>fe :edit<space>
nnoremap          <leader>fr :Rename<space>
nnoremap <silent> <leader>fs :write<cr>
nnoremap          <leader>fw :write<space>

xnoremap <silent> <leader>fs :write<cr>
