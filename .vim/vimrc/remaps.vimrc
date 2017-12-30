" leader remaps
let mapleader = "\<space>"

noremap <leader>p "+p
noremap <leader>P "+P
noremap <leader>y "+y
noremap <leader>Y "+y$
noremap <leader>x "+d
noremap <leader>X "+D

nnoremap <leader>w :write<cr>
nnoremap <leader>q :quit<cr>
nnoremap <leader>r :source $MYVIMRC<cr>:call lightline#update()<cr>

nnoremap <leader>c :ColorToggle<cr>
nnoremap <leader>d :Bdelete<cr>:call lightline#update()<cr>
nnoremap <leader>n :Neoformat<cr>
nnoremap <leader>t :TagbarToggle<cr>
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

noremap c "_c
noremap C "_C
noremap d "_d
noremap D "_D
noremap x d
noremap X D

" normal remaps
nnoremap Y y$

nnoremap cc "_cc
nnoremap dd "_dd

nnoremap <silent> <esc> :nohlsearch<cr>

nnoremap <expr> i len(getline('.')) == 0 ? "\"_cc" : 'i'
