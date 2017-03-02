""""""""""""
"" Native ""
""""""""""""

"" Backup
set nobackup    " disable making backups
set noswapfile  " disable making swp files

"" Buffer
set splitright  " open new windows right of the current window
set splitbelow  " open new windows below the current window

"" Color
set termguicolors   " always true color
set background=dark " dark background

"" Confirmation
set confirm     " asking to confirm instead of failing commands

"" Indentation
set autoindent      " indent according to previous line
set expandtab 	    " set tab as spaces
set softtabstop=4   " number of spaces per tab
set shiftwidth=4    " number of auto-indent spaces
set shiftround      " indent to next multiple of 'shiftwidth'

"" Line break
set linebreak	    " break lines at word (requires Wrap lines)
set showbreak=++    " wrap-broken line prefix
set textwidth=100   " line wrap (number of cols)

"" Line number
set number	    " show line numbers
set relativenumber  " line number is relative to current line

"" Matching
set showmatch	    " highlight matching brace
set matchpairs+=<:> " highlight angle brackets

"" Redrawing
set ttyfast     " faster redrawing
set lazyredraw  " only redraw when necessary

"" Search
set incsearch   " highlight while searching
set hlsearch    " keep matches highlighted
set smartcase	" enable smart-case search
set ignorecase	" always case-insensitive

"" Syntax
syntax on   " turn on syntax highlighting

"" Undo
set undofile                            " save undo in a file
set undodir=~/.local/share/nvim/undo/   " directory to save undo file

""""""""""
"" Misc ""
""""""""""

"" Fish
if &shell =~# 'fish$'
  set shell=/bin/bash
endif

"" Function
function! IndentedI() " i is indented on empty lines
    if len(getline('.')) == 0
        return "\"_cc"
    else
        return "i"
    endif
endfunction

"" Leader
let mapleader="\<space>"

nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>o :FZF<CR>
nnoremap <leader>u :UndotreeToggle<CR>
nnoremap <leader>a :Ack!<space>
nnoremap <leader>g :HardTimeToggle<CR>:Goyo<CR>
 
noremap <leader>y "+y
noremap <leader>Y "+Y
noremap <leader>d "+d
noremap <leader>D "+D
noremap <leader>p "+p
noremap <leader>P "+P

"" Rebind
noremap 0 ^
noremap ^ 0
noremap Y y$
nnoremap <silent> <esc> :noh<CR>
nnoremap <expr> i IndentedI()
nnoremap <space><space> a<space>

""""""""""""
"" Plugin ""
""""""""""""

call plug#begin('~/.config/nvim/plugged')

    "" completion
    Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'zchee/deoplete-clang'
    Plug 'zchee/deoplete-jedi'
    Plug 'artur-shaik/vim-javacomplete2'
    Plug 'shougo/neoinclude.vim'
    Plug 'shougo/neopairs.vim'
    Plug 'wellle/tmux-complete.vim'

    "" file management
    Plug 'mileszs/ack.vim'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'

    "" git
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'

    "" lint
    Plug 'neomake/neomake'

    "" navigation
    Plug 'takac/vim-hardtime'
    Plug 'justinmk/vim-sneak'
    Plug 'christoomey/vim-tmux-navigator'

    "" snippet
    Plug 'sirver/ultisnips'
    Plug 'honza/vim-snippets'

    "" text editing
    Plug 'tpope/vim-abolish'
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-commentary'
    Plug 'junegunn/goyo.vim'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-surround'
    Plug 'mbbill/undotree'

    "" visual
    Plug 'yggdroot/indentLine'
    Plug 'itchyny/lightline.vim'
    Plug 'zanglg/nova.vim'
    Plug 'sheerun/vim-polyglot'
    Plug 'jszakmeister/vim-togglecursor'

call plug#end()

"" Ack.vim
if executable('rg')
  let g:ackprg = 'rg --vimgrep'
endif

"" Auto Pairs
let g:AutoPairsCenterLine=0     " disable centering line at the bottom 1/3 of the window
let g:AutoPairsMultilineClose=0 " jump to a closing pair on the same line only

"" Deoplete
let g:deoplete#enable_at_startup=1
let g:deoplete#auto_complete_start_length=1 " the number of input needed to provide completion
inoremap <silent> <esc> <ESC>:pclose<CR>

"" Deoplete Clang
let g:deoplete#sources#clang#libclang_path='/usr/lib64/libclang.so'
let g:deoplete#sources#clang#clang_header='/usr/lib64/clang'

"" Hard Time
let g:hardtime_default_on=1
let g:hardtime_allow_different_key=1    " allow a key if different from the previous key
let g:hardtime_timout=500               " timeout allowed between keypresses

"" Javacomplete2
autocmd FileType java setlocal omnifunc=javacomplete#Complete

"" Lightline
let g:lightline = {
    \ 'colorscheme': 'default',
    \ 'component': {
    \   'readonly': '%{&readonly?"":""}',
    \ },
    \ 'separator': { 'left': '', 'right': '' },
    \ 'subseparator': { 'left': '', 'right': '' }
    \ }

"" Neopairs
let g:neopairs#enable=1

"" Neomake
autocmd! BufWritePost * Neomake

"" Nova
colorscheme nova    " nova colorscheme

"" Vim Sneak
let g:sneak#use_ic_scs=1    " sneaking case-insensitively
let g:sneak#streak=1        " label hints on two letters to jump two

"" Vim Tmux Navigator
nnoremap <silent> <bs> :TmuxNavigateLeft<CR>