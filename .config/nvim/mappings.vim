" normal + visual
noremap + "+
noremap \ :
noremap 0 ^
noremap ^ 0

" normal
nnoremap Y y$
nnoremap <expr> i len(getline('.')) == 0 ? '"_cc' : 'i'

" insert
imap     <c-x><c-f> <plug>(fzf-complete-path)
inoremap <c-u> <c-g>u<c-u>

" g
map      gs <plug>(GrepperOperator)
nnoremap gb :Buffers<cr>

" leader
nnoremap <leader>c  :ColorToggle<cr>
nnoremap <leader>n  :Neoformat<cr>
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

nnoremap <leader>rb :Grepper-buffers<cr>
nnoremap <leader>rg :Grepper<cr>

nnoremap <leader>tb :GutentagsUpdate<cr>
nnoremap <leader>tu :GutentagsUpdate!<cr>
