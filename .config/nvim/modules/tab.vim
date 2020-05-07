" data
let g:previous_tab_nr = 1

" abbrevs
cnoreabbrev tm tabmove

" mappings
nnoremap <m-s-tab>           :exec 'tabnext ' . g:previous_tab_nr<cr>
nnoremap <m-s-j>             gT
nnoremap <m-s-k>             gt
inoremap <m-s-tab>      <esc>:exec 'tabnext ' . g:previous_tab_nr<cr>
inoremap <m-s-j>        <esc>gT
inoremap <m-s-k>        <esc>gt
tnoremap <m-s-tab> <c-\><c-n>:exec 'tabnext ' . g:previous_tab_nr<cr>
tnoremap <m-s-j>   <c-\><c-n>gT
tnoremap <m-s-k>   <c-\><c-n>gt

nnoremap <silent> <leader>ad :tabclose<cr>
nnoremap <silent> <leader>an :tab split<cr>
nnoremap <silent> <leader>ao :tabonly<cr>
nnoremap <silent> <leader>ap :exec 'tabnext ' . g:previous_tab_nr<cr>

" autocmds
augroup tab
    autocmd!
    autocmd TabLeave * let g:previous_tab_nr = tabpagenr()
augroup END
