" backspace
set backspace=indent,eol,start

" backup
set backupdir=.,~/.vim/backup
set directory=~/.vim/swap//
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
if has('termguicolors') || has('gui_running')
    set termguicolors
endif

silent! colorscheme onedark

" column
set signcolumn=yes

" completion
set complete-=i
set completeopt=menuone,noinsert,noselect,preview
set previewheight=2

autocmd InsertLeave * if pumvisible() == 0 | pclose | endif

" confirmation
set confirm

" cursor
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[0 q"

" display
set display=lastline

" encoding
set encoding=utf-8

" format
set formatoptions=tcqj
set nrformats=bin,hex

" history
set history=1000

" indentation
set autoindent
set expandtab
set shiftround
set shiftwidth=4
set smarttab
set softtabstop=4
set tabstop=8

" list
set listchars=tab:>\ ,trail:-,nbsp:+

" map
set langnoremap

" matching
set matchpairs+=<:>
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
set tags=./tags;,tags
set tagcase=match

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
