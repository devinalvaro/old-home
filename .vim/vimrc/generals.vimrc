" backspace
set backspace=indent,eol,start

" backup
set nobackup
set noswapfile

" bell
set belloff=all

" buffer
set autoread
set hidden
set splitright
set splitbelow
set tabpagemax=50

" color
set termguicolors

silent! colorscheme onedark

" completion
set complete-=i
set completeopt+=menuone,noinsert,noselect
set completeopt-=menu

autocmd InsertLeave * if pumvisible() == 0 | pclose | endif

" confirmation
set confirm

" cursor
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[0 q"

" display
set display+=lastline

" encoding
set encoding=utf-8

" format
set formatoptions+=j
set nrformats-=octal

" history
set history=200

" indentation
set autoindent
set expandtab
set shiftround
set shiftwidth=4
set smarttab
set softtabstop=4
set tabstop=8

" list
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+

" map
set nolangremap

" matching
set showmatch

" menu
set wildmenu

" message
set noruler
set noshowcmd
set noshowmode
set shortmess+=cFI

" number
set numberwidth=2

" performance
set lazyredraw
set synmaxcol=320
set ttyfast

" scrolloff
set scrolloff=5

" search
set gdefault
set hlsearch
set incsearch
set ignorecase
set smartcase

" session
set sessionoptions-=options

" statusline
set laststatus=2

" tags
setglobal tags-=./tags tags-=./tags; tags^=./tags;
set tagcase=match

" timeout
set ttimeout
set ttimeoutlen=100

" tmux
set t_8b=[48;2;%lu;%lu;%lum
set t_8f=[38;2;%lu;%lu;%lum

" undo
set undofile
set undodir=~/.vim/undo

" viminfo
set viminfo+=!,n~/.viminfo

" window
autocmd VimResized * wincmd =

" wrapping
set breakindent
set linebreak
let &showbreak = '↳ '
