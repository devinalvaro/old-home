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

nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gc :Gcommit<cr>

nnoremap <leader>rb :Grepper-buffers<cr>
nnoremap <leader>rg :Grepper<cr>

" normal + visual remaps
noremap 0 ^
noremap ^ 0

noremap + "+

" normal remaps
nmap gb <leader>fb

nnoremap Y y$

nnoremap c* *Ncgn
nnoremap c# #NcgN

nnoremap <silent> <c-l> :nohlsearch<cr>

nnoremap <expr> i len(getline('.')) == 0 ? '"_cc' : 'i'

" insert remaps
imap <c-x><c-f> <plug>(fzf-complete-path)

inoremap <c-u> <c-g>u<c-u>
