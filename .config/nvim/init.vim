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
set background=dark " dark background

"" confirmation
set confirm " ask confirmation instead of failing commands

"" indentation
set expandtab     " set tab as spaces
set softtabstop=2 " number of spaces per tab
set shiftwidth=2  " number of auto-indent spaces
set shiftround    " indent to next multiple of 'shiftwidth'
set tabstop=2     " number of visual spaces per tab

"" number
set relativenumber " show distance of line relative to current line
set numberwidth=2  " maximal number of columsn to use for line number

"" matching
set showmatch       " highlight matching brace
set matchpairs+=<:> " highlight angle brackets

"" redrawing
set lazyredraw " only redraw when necessary

"" search
set smartcase  " enable smart-case search
set ignorecase " always case-insensitive
"
"" wrapping
set textwidth=0  " turn off automatic linebreak
set wrapmargin=0 " turn off automatic wrapping

"" undo
set undofile                          " save undo in a file
set undodir=~/.local/share/nvim/undo/ " directory to save undo file

""""""""""
"" Misc ""
""""""""""

"" function
function! IndentedI() " indent i on empty lines
    if len(getline('.')) == 0
        return "\"_cc"
    else
        return "i"
    endif
endfunction

"" leader remap
let mapleader="\<space>"

nnoremap <leader>o :FZF<CR>
nnoremap <leader>f :Grepper<CR>
nnoremap <leader>n :Neoformat<CR>:e<CR>
nnoremap <leader>\ :NERDTreeToggle<CR>
nnoremap <leader>u :UndotreeToggle<CR>

"" ctrl remap
nnoremap <C-c> "+y
nnoremap <C-v> "+p
nnoremap <C-s> :w<CR>

"" command remap
cnoremap w!! w !sudo tee > /dev/null %

"" other remap
nnoremap 0 ^
nnoremap ^ 0
nnoremap Y y$
nnoremap <silent> <esc> :noh<CR>
nnoremap <expr> i IndentedI()

""""""""""""
"" Plugin ""
""""""""""""

call plug#begin('~/.config/nvim/plugged')

"" completion
Plug 'rip-rip/clang_complete'
Plug 'shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'zchee/deoplete-jedi'
Plug 'vim-javacomplete2'
Plug 'shougo/neoinclude.vim'
Plug 'wellle/tmux-complete.vim'

"" file management
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'mhinz/vim-grepper'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'mbbill/undotree', {'on': 'UndotreeToggle'}

"" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

"" lint
Plug 'w0rp/ale'

"" text editing
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'raimondi/delimitmate'
Plug 'tommcdo/vim-lion'
Plug 'sbdchd/neoformat'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'

"" text navigation
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-unimpaired'

"" tmux
Plug 'christoomey/vim-tmux-navigator'

"" visual
Plug 'chriskempson/base16-vim'
Plug 'yggdroot/indentLine'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'jszakmeister/vim-togglecursor'

call plug#end()

"" ale
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1

"" base16
colorscheme base16-tomorrow-night

"" clang_complete
let g:clang_library_path='/usr/lib64/libclang.so'

"" delimitmate
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1
let g:delimitMate_matchpairs = "(:),[:],{:}"

"" deoplete
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

"" grepper
let g:grepper = {}
let g:grepper.tools = ['rg', 'grep']

"" javacomplete2
autocmd FileType java setlocal omnifunc=javacomplete#Complete

"" lightline
let g:lightline = {'colorscheme': 'Tomorrow_Night'}

"" vim-tmux-navigator
nnoremap <silent> <bs> :TmuxNavigateLeft<CR>
