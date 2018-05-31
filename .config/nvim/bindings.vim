" leader remaps
let mapleader = "\<space>"

nnoremap <leader>c :ColorToggle<cr>
nnoremap <leader>n :Neoformat<cr>
nnoremap <leader>u :UndotreeToggle<cr>

nnoremap <leader>b/ :BLines<cr>
nnoremap <leader>bc :BCommits<cr>
nnoremap <leader>bt :BTags<cr>

nnoremap <leader>dd :DevDocs<space>
nnoremap <leader>dc :DevDocsUnderCursor<cr>

nnoremap <leader>f/ :Lines<cr>
nnoremap <leader>f: :Commands<cr>
nnoremap <leader>fb :Buffers<cr>
nnoremap <leader>fc :Commits<cr>
nnoremap <leader>fg :GFiles<cr>
nnoremap <leader>fi :Files<cr>
nnoremap <leader>ft :Tags<cr>

nnoremap <leader>h/ :History/<cr>
nnoremap <leader>h: :History:<cr>
nnoremap <leader>hi :History<cr>

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

" normal + visual remaps
noremap 0 ^
noremap ^ 0

noremap + "+

" normal remaps
if executable('fzf')
    nmap gb :Buffers<cr>
else
    nnoremap gb :ls<cr>:b<space>
endif

nnoremap Y y$

nnoremap c* *Ncgn
nnoremap c# #NcgN

nnoremap <expr> i len(getline('.')) == 0 ? '"_cc' : 'i'

" insert remaps
if executable('fzf')
    imap <c-x><c-f> <plug>(fzf-complete-path)
endif

inoremap <c-u> <c-g>u<c-u>
