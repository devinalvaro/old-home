" normal + visual
noremap + "+

" normal
nnoremap Y y$
nnoremap ga <c-^>
nnoremap <expr> i &modifiable && len(getline('.')) == 0 ? '"_cc' : 'i'

" insert
inoremap <c-u> <c-g>u<c-u>

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

if executable('rg')
    nnoremap <leader>rg :GrepperRg<space>
else
    nnoremap <leader>rg :GrepperGrep<space>
endif
