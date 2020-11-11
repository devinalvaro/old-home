" abbrevs
cnoreabbrev tdo tabdo
cnoreabbrev tm  tabmove

" mappings
nnoremap <m-s-j>           gT
nnoremap <m-s-k>           gt
inoremap <m-s-j>      <esc>gT
inoremap <m-s-k>      <esc>gt
tnoremap <m-s-j> <c-\><c-n>gT
tnoremap <m-s-k> <c-\><c-n>gt

nnoremap <silent> <leader>ad :tabclose<cr>
nnoremap <silent> <leader>an :tab split<cr>
nnoremap <silent> <leader>ao :tabonly<cr>
