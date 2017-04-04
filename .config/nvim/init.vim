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
set wrap         " enable visual wrapping
set textwidth=0  " turn off automatic linebreak
set wrapmargin=0 " turn off automatic wrapping
set showbreak=++ " wrap-broken line prefix

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

"" leader
let mapleader="\<space>"

"" leader remaps
noremap  <leader>y "+y
noremap  <leader>Y "+Y
noremap  <leader>p "+p
noremap  <leader>P "+P
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

"" plugin calls
nnoremap <leader>o :FZF<CR>
nnoremap <leader>f :Grepper<CR>
nnoremap <leader>n :Neoformat<CR>:e<CR>
nnoremap <leader>u :UndotreeToggle<CR>

"" other remaps
noremap 0 ^
noremap ^ 0
nnoremap <silent> <esc> :noh<CR>
nnoremap <expr> i IndentedI()
cnoremap w!! w !sudo tee > /dev/null %

""""""""""""
"" Plugin ""
""""""""""""

call plug#begin('~/.config/nvim/plugged')

"" completion
Plug 'rip-rip/clang_complete'
Plug 'shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'zchee/deoplete-jedi'
Plug 'shougo/neoinclude.vim'
Plug 'wellle/tmux-complete.vim'

"" file management
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'mhinz/vim-grepper'

"" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

"" lint
Plug 'w0rp/ale'

"" snippet
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'

"" text editing
Plug 'tpope/vim-abolish'
Plug 'raimondi/delimitmate'
Plug 'tpope/vim-commentary'
Plug 'brooth/far.vim'
Plug 'tommcdo/vim-lion'
Plug 'sbdchd/neoformat'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'mbbill/undotree'

"" text navigation
Plug 'justinmk/vim-sneak'
Plug 'wellle/targets.vim'
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

"" deoplete
let g:deoplete#enable_at_startup = 1
inoremap <silent> <esc> <esc> :pclose<CR>

"" clang_complete
let g:clang_library_path='/usr/lib64/libclang.so'

"" delimitmate
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1
let g:delimitMate_matchpairs = "(:),[:],{:}"

"" gitgutter
let g:gitgutter_max_signs = 1000

"" grepper
let g:grepper = {}
let g:grepper.tools = ['rg', 'grep']

"" lightline
let g:lightline = {'colorscheme': 'Tomorrow_Night'}

"" vim-tmux-navigator
nnoremap <silent> <bs> :TmuxNavigateLeft<CR>
