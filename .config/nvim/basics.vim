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

" matching
set showmatch
set suffixes-=.h

" message
set noruler
set noshowcmd
set noshowmode
set shortmess+=cF

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
set timeoutlen=300

" undo
set undofile

" window
set splitbelow
set splitright

" wrapping
set breakindent
set linebreak
let &showbreak = '↳ '

" ---- autocmds ---- "

augroup Completions
    autocmd!
    autocmd InsertLeave * if pumvisible() == 0 | pclose | endif
augroup END

" ---- mappings ---- "

" leader
let mapleader = "\<space>"

" indentation
nnoremap <expr> i &modifiable && len(getline('.')) == 0 ? '"_cc' : 'i'

" yanking
noremap + "+
nnoremap Y y$
