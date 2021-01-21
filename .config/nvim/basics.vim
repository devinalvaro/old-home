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

" command
set confirm

" completion
set complete-=t
set completeopt=menuone,preview,noinsert,noselect
set pumheight=8

" cursor
set mouse=a

" diff
set diffopt+=vertical

" folding
set nofoldenable

" editing
set virtualedit+=block

" indent
set expandtab
set shiftround
set shiftwidth=4
set tabstop=4

" leader
let mapleader = "\<space>"
let maplocalleader = ','

" search
set gdefault
set ignorecase
set inccommand=nosplit
set smartcase

" split
set splitbelow
set splitright

" tab
set showtabline=2

" time
set timeoutlen=400
set updatetime=200

" undo
set undofile

" verbosity
set noruler
set noshowcmd
set noshowmode
set shortmess+=cF

" wrapping
set breakindent
set linebreak
let &showbreak = '↳ '

" ---- mappings ---- "

" buffer
nnoremap <silent> <c-i> :set nostartofline<cr><c-^>:set startofline<cr>

nnoremap <c-j> <c-o>
nnoremap <c-k> <c-i>

" command
nnoremap <silent> : :set nostartofline<cr>:edit<cr>:set startofline<cr>
xnoremap          : <nop>
onoremap          : <nop>

nnoremap ; :
xnoremap ; :
onoremap ; :

cnoremap <c-n> <down>
cnoremap <c-p> <up>

" file
nnoremap <silent> <cr> :update<cr>

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

nnoremap <silent> <c-o> :let @/ = ''<cr>

" window
nnoremap \ <c-w>

" yanking
nnoremap + "+
xnoremap + "+

nnoremap Y y$
xnoremap Y y$
