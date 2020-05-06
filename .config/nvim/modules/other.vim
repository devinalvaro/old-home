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
            \ 'u': {
            \   'name': '+undo',
            \   't': 'toggle-undotree',
            \   },
            \ }

" mappings
nmap              <leader>lj <Plug>(qf_qf_switch)
nmap              <leader>lt <Plug>(qf_loc_toggle)

nmap              <leader>qj <Plug>(qf_qf_switch)
nmap              <leader>qt <Plug>(qf_qf_toggle)

nnoremap <silent> <leader>ut :UndotreeToggle<cr>
