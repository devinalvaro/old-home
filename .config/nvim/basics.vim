" ---- options ---- "

" buffer
set hidden

" color
set termguicolors

" column
set numberwidth=2
set signcolumn=yes

" completion
set completeopt=menuone,preview,noinsert,noselect
set pumheight=8

" confirmation
set confirm

" cursor
set nostartofline

" indentation
set expandtab
set shiftround
set shiftwidth=4
set tabstop=4

" leader
let mapleader = "\<space>"
let maplocalleader = ','

" matching
set showmatch
set suffixes-=.h

" search
set gdefault
set ignorecase
set inccommand=nosplit
set smartcase

" statusline
set statusline=
                  \\ %{&filetype!=#''?&filetype:'none'}
                  \\ %{&readonly\|\|!&modifiable?&modified?'%*':'%%':&modified?'**':'--'}
                  \\ %{expand('%:~:.')!=#''?expand('%:~:.'):'[No\ Name]'}
                  \%=
                  \%l/%L%1(%)
                  \%p%%%1(%)

" swap
set noswapfile

" time
set updatetime=100
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
nnoremap <tab> <c-^>

" command
nnoremap ; :
xnoremap ; :

" indentation
nnoremap <expr> i &modifiable && len(getline('.')) == 0 ? '"_cc' : 'i'

" yanking
nnoremap + "+
xnoremap + "+
nnoremap Y y$
xnoremap Y y$
