" neovim defaults
filetype plugin indent on
syntax enable

set autoindent
set autoread
set backspace=indent,eol,start
set backupdir=.,~/.local/share/nvim/backup
set belloff=all
set complete-=i
set directory=~/.local/share/nvim/swap//
set display=lastline
set formatoptions=tcqj
set history=10000
set hlsearch
set incsearch
set langnoremap
set laststatus=2
set listchars=tab:>\ ,trail:-,nbsp:+
set nrformats=bin,hex
set ruler
set sessionoptions-=options
set showcmd
set smarttab
set tabpagemax=50
set tags=./tags;,tags
set ttyfast
set undodir=~/.local/share/nvim/undo
set viminfo+=!
set wildmenu

" tmux support
set t_8b=[48;2;%lu;%lu;%lum
set t_8f=[38;2;%lu;%lu;%lum

" source init.vim
source .config/nvim/init.vim
