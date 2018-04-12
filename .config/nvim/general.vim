" backup
set nobackup

" buffer
set hidden
set splitright
set splitbelow

" color
set termguicolors

silent! colorscheme onedark

" column
set signcolumn=yes

" completion
set completeopt+=menuone,noinsert,noselect
set completeopt-=menu

augroup Completion
    autocmd!
    autocmd InsertLeave * if pumvisible() == 0 | pclose | endif
augroup END

" confirmation
set confirm

" cursor
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[0 q"

" encoding
set encoding=utf-8

" indentation
set expandtab
set shiftround
set shiftwidth=4
set softtabstop=4
set tabstop=4

" matching
set showmatch

" message
set noruler
set noshowcmd
set noshowmode
set shortmess+=cF

" number
set numberwidth=2

" performance
set lazyredraw
set synmaxcol=200

" scrolloff
set scrolloff=5

" search
set gdefault
set ignorecase
set smartcase

" swap
set noswapfile

" tags
set tagcase=match

" timeout
set ttimeout
set ttimeoutlen=100

" undo
set undofile

" window
augroup Window
    autocmd!
    autocmd VimResized * wincmd =
augroup END

" wrapping
set breakindent
set linebreak

let &showbreak = '↳ '
