" data
let g:which_key_map['o'] = {
            \ 'name': '+other',
            \ 't': {
            \   'name': '+tags',
            \   't': 'toggle-tagbar',
            \   'u': 'update-tags',
            \   },
            \ 'u': {
            \   'name': '+undo',
            \   't': 'toggle-undotree',
            \   },
            \ }

" mappings
nnoremap <silent> <leader>ott :TagbarToggle<cr>
nnoremap <silent> <leader>otu :GutentagsUpdate<cr>
nnoremap <silent> <leader>out :UndotreeToggle<cr>
