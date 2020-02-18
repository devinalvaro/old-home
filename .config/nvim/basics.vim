" ---- options ---- "

" buffer
set hidden

" backup
set noswapfile
set nowritebackup

" color
set termguicolors

" column
set numberwidth=2
set signcolumn=yes

" completion
set complete-=t
set completeopt=menuone,preview,noinsert,noselect
set pumheight=8

" cursor
set nostartofline
set mouse=a

" editing
set virtualedit=block

" indentation
set expandtab
set shiftround
set shiftwidth=4
set tabstop=4

" leader
let mapleader = "\<space>"
let maplocalleader = ','

" prompt
set confirm

" search
set gdefault
set ignorecase
set inccommand=nosplit
set smartcase

" tabline
set showtabline=2

" time
set updatetime=200
set timeoutlen=400

" undo
set undofile

" verbosity
set noruler
set noshowcmd
set noshowmode
set shortmess+=cF

" window
set splitbelow
set splitright

" wrapping
set breakindent
set linebreak
let &showbreak = '↳ '

" ---- mappings ---- "

" buffer
nnoremap <bslash> <c-^>

" command
nnoremap : <nop>
xnoremap : <nop>

nnoremap ; :
xnoremap ; :

cnoremap <c-n> <down>
cnoremap <c-p> <up>

" indentation
nnoremap <expr> i &modifiable && len(getline('.')) == 0 ? '"_cc' : 'i'

" redraw
nnoremap <c-l> :nohlsearch<cr>:diffupdate<cr>:syntax sync fromstart<cr><c-l>

" search
nnoremap <expr> n  'Nn'[v:searchforward]
xnoremap <expr> n  'Nn'[v:searchforward]
onoremap <expr> n  'Nn'[v:searchforward]

nnoremap <expr> N  'nN'[v:searchforward]
xnoremap <expr> N  'nN'[v:searchforward]
onoremap <expr> N  'nN'[v:searchforward]

" yanking
nnoremap + "+
xnoremap + "+

nnoremap Y y$
xnoremap Y y$
