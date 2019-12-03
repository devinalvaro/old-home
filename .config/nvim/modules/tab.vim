" data
let g:which_key_map['a'] = {
            \ 'name': '+tab',
            \ 'd': 'delete-tab',
            \ 'n': 'new-tab',
            \ 'o': 'only-tab',
            \ 'p': 'previous-tab',
            \ }

let g:previous_tab_nr = 1

" mappings
nnoremap <m-J>           gT
nnoremap <m-K>           gt
inoremap <m-J>      <esc>gT
inoremap <m-K>      <esc>gt
tnoremap <m-J> <c-\><c-n>gT
tnoremap <m-K> <c-\><c-n>gt

nnoremap <silent> <leader>ad :tabclose<cr>
nnoremap <silent> <leader>an :tab split<cr>
nnoremap <silent> <leader>ao :tabonly<cr>
nnoremap <silent> <leader>ap :exec 'tabnext ' . g:previous_tab_nr<cr>

" abbrevs
cnoreabbrev tm tabmove

" autocmds
augroup tab
    autocmd!
    autocmd TabLeave * let g:previous_tab_nr = tabpagenr()
augroup END
