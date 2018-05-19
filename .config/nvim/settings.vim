" buffer
set hidden

" color
set termguicolors

silent! colorscheme onedark

" column
set signcolumn=yes
set numberwidth=2

" completion
set completeopt+=menuone,noinsert,noselect
set completeopt-=menu
set pumheight=10

augroup Completion
    autocmd!
    autocmd InsertLeave * if pumvisible() == 0 | pclose | endif
augroup END

" confirmation
set confirm

" cursor
set nostartofline

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[0 q"

" indentation
set expandtab
set shiftround
set shiftwidth=4
set tabstop=4

" matching
set showmatch

" message
set noruler
set noshowcmd
set noshowmode
set shortmess+=cF

" scroll
set scrolloff=1
set sidescrolloff=5

" search
set gdefault
set ignorecase
set smartcase

" swap
set noswapfile

" undo
set undofile

" update
set lazyredraw
set updatetime=150

" window
set splitright
set splitbelow

augroup Window
    autocmd!
    autocmd VimResized * wincmd =
augroup END

" wrapping
set breakindent
set linebreak

let &showbreak = '↳ '
