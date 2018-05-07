" leader remaps
let mapleader = "\<space>"

nnoremap <leader>c :ColorToggle<cr>
nnoremap <leader>n :Neoformat<cr>
nnoremap <leader>u :UndotreeToggle<cr>

nnoremap <leader>b/ :BLines<cr>
nnoremap <leader>bc :BCommits<cr>
nnoremap <leader>bt :BTags<cr>

nnoremap <leader>f/ :Lines<cr>
nnoremap <leader>f: :Commands<cr>
nnoremap <leader>fb :Buffers<cr>
nnoremap <leader>fc :Commits<cr>
nnoremap <leader>fi :Files<cr>
nnoremap <leader>fr :Rg<cr>
nnoremap <leader>ft :Tags<cr>

nnoremap <leader>h/ :History/<cr>
nnoremap <leader>h: :History:<cr>
nnoremap <leader>hi :History<cr>

nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>gf :GFiles<cr>
nnoremap <leader>gs :Gstatus<cr>

nnoremap <leader>rb :Grepper-buffers<cr>
nnoremap <leader>rg :Grepper<cr>

" normal + visual remaps
noremap 0 ^
noremap ^ 0

noremap + "+

" normal remaps
nmap g/ <leader>b/
nmap g: <leader>f:
nmap gb <leader>fb

nnoremap Y y$

nnoremap c* *Ncgn
nnoremap c# #NcgN

nnoremap <silent> <c-l> :nohlsearch<cr>

nnoremap <expr> i len(getline('.')) == 0 ? '"_cc' : 'i'

" insert remaps
if executable('fzf')
    imap <c-x><c-f> <plug>(fzf-complete-path)
endif

inoremap <c-u> <c-g>u<c-u>
