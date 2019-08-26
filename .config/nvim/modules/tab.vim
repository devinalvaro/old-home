" data
let g:which_key_map['a'] = {
            \ 'name': '+tab',
            \ 'a': 'switch-tab',
            \ 'd': 'delete-tab',
            \ 'n': 'new-tab',
            \ 'o': 'only-tab',
            \ }

let g:last_tab_nr = 1

" mappings
nnoremap <silent> <leader>aa :exec 'tabnext ' . g:last_tab_nr<cr>
nnoremap <silent> <leader>ad :tabclose<cr>
nnoremap <silent> <leader>an :tab split<cr>
nnoremap <silent> <leader>ao :tabonly<cr>

" autocmds
augroup tab
    autocmd!
    autocmd TabLeave * let g:last_tab_nr = tabpagenr()
augroup END
