" data
let g:which_key_map['a'] = {
            \ 'name': '+tab',
            \ '$': 'last-tab',
            \ '0': 'first-tab',
            \ 'a': 'switch-tab',
            \ 'd': 'delete-tab',
            \ 'm': 'move-tab',
            \ 'n': 'new-tab',
            \ 'o': 'only-tab',
            \ 's': 'split-tab',
            \ }

let g:last_tab_nr = 1

" mappings
nnoremap <silent> <leader>a$ :tablast<cr>
nnoremap <silent> <leader>a0 :tabfirst<cr>
nnoremap <silent> <leader>aa :exec 'tabnext ' . g:last_tab_nr<cr>
nnoremap <silent> <leader>ad :tabclose<cr>
nnoremap <silent> <leader>am :tabmove<cr>
nnoremap <silent> <leader>an :tabnew<cr>
nnoremap <silent> <leader>ao :tabonly<cr>
nnoremap <silent> <leader>as :tab split<cr>

" autocmds
augroup tab
    autocmd!
    autocmd TabLeave * let g:last_tab_nr = tabpagenr()
augroup END
