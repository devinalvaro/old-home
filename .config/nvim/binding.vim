" leader remaps
let mapleader = "\<space>"

nnoremap <leader>c :ColorToggle<cr>
nnoremap <leader>n :Neoformat<cr>
nnoremap <leader>u :UndotreeToggle<cr>

nnoremap <leader>bc :BCommits<cr>
nnoremap <leader>bl :BLines<cr>
nnoremap <leader>bt :BTags<cr>

nnoremap <leader>fb :Buffers<cr>
nnoremap <leader>fc :Commits<cr>
nnoremap <leader>fh :History:<cr>
nnoremap <leader>fi :Files<cr>
nnoremap <leader>fl :Lines<cr>
nnoremap <leader>ft :Tags<cr>

nnoremap <leader>gb :Grepper-buffers<cr>
nnoremap <leader>gr :Grepper<cr>

" normal + visual remaps
noremap 0 ^
noremap ^ 0

noremap + "+

noremap c "_c
noremap C "_C
noremap d "_d
noremap D "_D
noremap x d
noremap X D

" normal remaps
nmap gb <leader>fb

nnoremap Y y$

nnoremap c* *Ncgn
nnoremap c# #NcgN

nnoremap cc "_cc
nnoremap dd "_dd

nnoremap <silent> <c-l> :nohlsearch<cr>

nnoremap <expr> i len(getline('.')) == 0 ? '"_cc' : 'i'

" insert remaps
imap <c-x><c-f> <plug>(fzf-complete-path)

inoremap <c-u> <c-g>u<c-u>
