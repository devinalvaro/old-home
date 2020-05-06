" data
let g:which_key_map['f'] = {
            \ 'name': '+file',
            \ '.': 'edit-on-file-dir',
            \ 'e': 'edit-file',
            \ 'r': 'rename-file',
            \ 's': 'split-file',
            \ 'v': 'vertical-split-file',
            \ 'w': 'write-file',
            \ }

" mappings
nnoremap <silent> <s-cr> :Files<cr>

nnoremap <leader>f. :edit %:p:h/
nnoremap <leader>fe :edit<space>
nnoremap <leader>fr :Rename<space>
nnoremap <leader>fs :split<space>
nnoremap <leader>fv :vertical split<space>
nnoremap <leader>fw :write<space>
