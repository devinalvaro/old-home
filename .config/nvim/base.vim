" buffer
set hidden

" color
set termguicolors

" column
set numberwidth=2
set signcolumn=yes

" completion
set completeopt=menuone,noinsert,noselect
set pumheight=10

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

" matching
set showmatch
set suffixes-=.h

" message
set noruler
set noshowcmd
set noshowmode
set shortmess+=cF

" python
let g:python_host_prog = $PYTHON_HOST_PROG
let g:python3_host_prog = $PYTHON3_HOST_PROG

" scroll
set scrolloff=1
set sidescrolloff=5

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

" undo
set undofile

" update
set lazyredraw
set updatetime=100

" window
set splitbelow
set splitright

" wrapping
set breakindent
set linebreak
let &showbreak = '↳ '
