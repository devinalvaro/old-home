" backspace
set backspace=indent,eol,start

" backup
set nobackup
set backupdir=.,~/.vim/backup
set noswapfile
set directory=~/.vim/swap//

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

set background=dark
silent! colorscheme one

if has('termguicolors') || has ('gui_running') && g:colors_name == 'one'
    highlight Normal ctermfg=none ctermfg=none
    highlight Comment guifg=#8e94a1
    highlight LineNr guifg=#828997
    highlight StatusLine guibg=#353940
    highlight StatusLineNC guifg=#353940 guibg=#abb2bf
    highlight vertSplit guifg=#828997
    highlight vimLineComment guifg=#8e94a1

    highlight BufTabLineCurrent guibg=#5c6370
    highlight BufTabLineActive guibg=#3e4452
    highlight BufTabLineHidden guibg=#2c323d
    highlight BufTabLineFill guibg=#2c323d

    highlight TagbarSignature guifg=#8e94a1
endif

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

" messages
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
set viminfo+=!

" wrapping
set breakindent
set linebreak
let &showbreak = '↳ '
