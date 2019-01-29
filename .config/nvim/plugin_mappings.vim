" fzf
imap     <c-x><c-f> <plug>(fzf-complete-path)
nnoremap gb :Buffers<cr>

" grepper
map      gs <plug>(GrepperOperator)

" leader
nnoremap <leader>s  :StripWhitespace<cr>
nnoremap <leader>u  :UndotreeToggle<cr>

nnoremap <leader>fg :GFiles<cr>
nnoremap <leader>fi :Files<cr>
nnoremap <leader>fl :Lines<cr>
nnoremap <leader>ft :Tags<cr>

nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>ge :Gedit<cr>
nnoremap <leader>gg :Git<space>
nnoremap <leader>gl :silent! Gllog<cr>
nnoremap <leader>gm :Gmerge<cr>
nnoremap <leader>gr :Gread<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gw :Gwrite<cr>

if executable('rg')
    nnoremap <leader>rg :GrepperRg<space>
else
    nnoremap <leader>rg :GrepperGrep<space>
endif
