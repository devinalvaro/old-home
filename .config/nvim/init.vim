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
Plug 'wellle/tmux-complete.vim'

"" file management
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'mhinz/vim-grepper'

"" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

"" lint
Plug 'w0rp/ale'

"" text editing
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'raimondi/delimitmate'
Plug 'brooth/far.vim'
Plug 'tommcdo/vim-lion'
Plug 'sbdchd/neoformat'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'

"" tags
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }

"" text navigation
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-unimpaired'

"" tmux
Plug 'christoomey/vim-tmux-navigator'

"" undo
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }

"" visual
Plug 'yggdroot/indentline'
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'

call plug#end()

"" ale
let g:ale_lint_on_text_changed='normal'
let g:ale_lint_on_insert_leave=1

"" delimitmate
let g:delimitMate_expand_cr=2
let g:delimitMate_expand_space=1
let g:delimitMate_balance_matchpairs=1
let g:delimitMate_matchpairs="(:),[:],{:}"

"" deoplete
let g:deoplete#enable_at_startup=1
let g:deoplete#auto_complete_start_length=1
autocmd InsertLeave * if pumvisible() == 0 | pclose | endif

"" deoplete-clang
let g:deoplete#sources#clang#libclang_path='/usr/lib/libclang.so'
let g:deoplete#sources#clang#clang_header='/usr/lib/clang'

"" grepper
let g:grepper={}
let g:grepper.tools=[ 'rg', 'grep' ]

"" javacomplete2
autocmd FileType java setlocal omnifunc=javacomplete#Complete

"" lightline
let g:lightline={ 'colorscheme': 'onedark' }

"" sneak
let g:sneak#label=1

"" vim-tmux-navigator
nnoremap <silent> <bs> :TmuxNavigateLeft<CR>

""""""""""""
"" Native ""
""""""""""""

"" backup
set nobackup   " disable making backups
set noswapfile " disable making swp files

"" buffer
set hidden     " hide buffers instead of closing them
set splitright " open new windows right of the current window
set splitbelow " open new windows below the current window

"" color
set termguicolors   " always true color
colorscheme onedark " set colorscheme
highlight Normal guibg=none guifg=#d6d6d6
highlight Comment guifg=#99a0ab

"" confirmation
set confirm " ask confirmation instead of failing commands

"" cursor
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
            \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
            \,sm:block-blinkwait175-blinkoff150-blinkon175

"" indentation
set expandtab     " set tab as spaces
set softtabstop=4 " number of spaces per tab
set shiftwidth=4  " number of auto-indent spaces
set shiftround    " indent to next multiple of 'shiftwidth'

"" matching
set showmatch       " highlight matching brace
set matchpairs+=<:> " highlight angle brackets

"" redrawing
set lazyredraw " only redraw when necessary

"" search
set smartcase  " enable smart-case search
set ignorecase " always case-insensitive

"" undo
set undofile                          " save undo in a file
set undodir=~/.local/share/nvim/undo/ " directory to save undo file

""""""""""
"" Misc ""
""""""""""

"" functions
function! IndentedI() " indent i on empty lines
    if len(getline('.')) == 0
        return "\"_cc"
    else
        return "i"
    endif
endfunction

"" leader remaps
let mapleader="\<space>"

nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

noremap <leader>y "+y
noremap <leader>p "+p
noremap <leader>d "+d
noremap <leader>Y "+Y
noremap <leader>P "+P
noremap <leader>D "+D

nnoremap <leader>o :FZF<CR>
nnoremap <leader>f :Grepper<CR>
nnoremap <leader>n :Neoformat<CR>
nnoremap <leader>t :TagbarToggle<CR>
nnoremap <leader>u :UndotreeToggle<CR>

"" command remap
cnoremap w!! w !sudo tee > /dev/null %

"" other remaps
nnoremap 0 ^
nnoremap ^ 0
nnoremap Y y$
nnoremap <silent> <esc> :noh<CR>
nnoremap <expr> i IndentedI()
