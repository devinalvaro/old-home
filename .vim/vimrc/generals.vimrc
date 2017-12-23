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

autocmd VimResized * wincmd =

" color
if has('termguicolors') || has('gui_running')
    set termguicolors
endif

silent! colorscheme onedark

if has('termguicolors') || has ('gui_running') && g:colors_name == 'one'
    highlight Comment guifg=#7c828c
    highlight LineNr guifg=#7c828c
    highlight vertSplit guifg=#7c828c
    highlight vimLineComment guifg=#7c828c

    highlight TagbarSignature guifg=fg
endif

" column
set signcolumn=yes

" completion
set complete-=i
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
set nrformats=bin,hex
set formatoptions=tcqj

" history
set history=1000

" indentation
set smarttab
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftround
set shiftwidth=4

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

" wrapping
set breakindent
set linebreak
let &showbreak = '↳ '
