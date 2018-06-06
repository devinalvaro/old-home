" normal + visual remaps
noremap + "+

noremap 0 ^
noremap ^ 0

" normal remaps
nnoremap g: :Commands<cr>
nnoremap gb :Buffers<cr>

nnoremap Y y$

nnoremap c* *Ncgn
nnoremap c# #NcgN

nnoremap <expr> i len(getline('.')) == 0 ? '"_cc' : 'i'

" insert remaps
if executable('fzf')
    imap <c-x><c-f> <plug>(fzf-complete-path)
endif

inoremap <c-u> <c-g>u<c-u>

" leader remaps
let mapleader = "\<space>"

nnoremap <leader>c :ColorToggle<cr>
nnoremap <leader>n :Neoformat<cr>
nnoremap <leader>u :UndotreeToggle<cr>

nnoremap <leader>dd :DevDocs<space>
nnoremap <leader>dc :DevDocsUnderCursor<cr>

nnoremap <leader>fc :Commits<cr>
nnoremap <leader>fg :GFiles<cr>
nnoremap <leader>fi :Files<cr>
nnoremap <leader>fl :Lines<cr>
nnoremap <leader>ft :Tags<cr>

nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>ge :Gedit<cr>
nnoremap <leader>gg :Git<space>
nnoremap <leader>gl :Glog<cr>
nnoremap <leader>gm :Gmerge<cr>
nnoremap <leader>gr :Gread<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gw :Gwrite<cr>

nnoremap <leader>rb :Grepper-buffers<cr>
nnoremap <leader>rg :Grepper<cr>