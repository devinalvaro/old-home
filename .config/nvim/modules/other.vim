" data
let g:which_key_map['o'] = {
            \ 'name': '+other',
            \ 'l': {
            \   'name': '+loclist',
            \   'j': 'jump-to-from-loclist',
            \   't': 'toggle-loclist',
            \   },
            \ 'q': {
            \   'name': '+quickfix',
            \   'j': 'jump-to-from-quickfix',
            \   't': 'toggle-quickfix',
            \   },
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
nmap              <leader>olj <Plug>(qf_qf_switch)
nmap              <leader>olt <Plug>(qf_loc_toggle)
nmap              <leader>oqj <Plug>(qf_qf_switch)
nmap              <leader>oqt <Plug>(qf_qf_toggle)
nnoremap <silent> <leader>ott :TagbarToggle<cr>
nnoremap <silent> <leader>otu :GutentagsUpdate<cr>
nnoremap <silent> <leader>out :UndotreeToggle<cr>
