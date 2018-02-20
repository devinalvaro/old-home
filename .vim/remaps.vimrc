" leader remaps
let mapleader = "\<space>"

nnoremap <leader>d :bdelete<cr>
nnoremap <leader>r :source $MYVIMRC<cr>
nnoremap <leader>w :write<cr>
nnoremap <leader>q :quit<cr>

nnoremap <leader>c :ColorToggle<cr>
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

nnoremap <leader>ld :LspDefinition<cr>
nnoremap <leader>le :LspReferences<cr>
nnoremap <leader>lfd :LspDocumentFormat<cr>
nnoremap <leader>lfr :LspDocumentRangeFormat<cr>
nnoremap <leader>lg :LspDocumentDiagnostics<cr>
nnoremap <leader>lh :LspHover<cr>
nnoremap <leader>lr :LspRename<cr>
nnoremap <leader>lsd :LspDocumentSymbol<cr>
nnoremap <leader>lsw :LspWorkspaceSymbol<cr>

" normal + visual remaps
noremap Q gq

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
nmap gl <leader>fl

nnoremap Y y$

nnoremap cc "_cc
nnoremap dd "_dd

nnoremap <silent> <c-l> :nohlsearch<cr>

nnoremap <expr> i len(getline('.')) == 0 ? '"_cc' : 'i'

" insert remaps
inoremap <c-u> <c-g>u<c-u>
