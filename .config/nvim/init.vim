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
noremap  <leader>d "+d
noremap  <leader>D "+D
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

"" plugin calls
nnoremap <leader>a :Asyncrun 
nnoremap <leader>k :ALEPreviousWrap<CR>
nnoremap <leader>j :ALENextWrap<CR>
nnoremap <leader>o :FZF<CR>
nnoremap <leader>f :Grepper<CR>
nnoremap <leader>n :Neoformat<CR>
nnoremap <leader>u :UndotreeToggle<CR>

"" other remaps
noremap 0 ^
noremap ^ 0
noremap Y y$
nnoremap <silent> <esc> :noh<CR>
nnoremap <expr> i IndentedI()
cnoremap w!! w !sudo tee > /dev/null %

""""""""""""
"" Plugin ""
""""""""""""

call plug#begin('~/.config/nvim/plugged')

"" completion
Plug 'shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'zchee/deoplete-clang'
Plug 'davidhalter/jedi-vim'
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

"" navigation
Plug 'jlanzarotta/bufexplorer'
Plug 'christoomey/vim-tmux-navigator'

"" shell
Plug 'skywind3000/asyncrun.vim'

"" snippet
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'

"" text editing
Plug 'tpope/vim-abolish'
Plug 'jiangmiao/auto-pairs'
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

"" visual
Plug 'chriskempson/base16-vim'
Plug 'yggdroot/indentLine'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'jszakmeister/vim-togglecursor'

call plug#end()

"" ale
let g:ale_lint_on_text_changed = 0                                 " disable lint on every text change
autocmd InsertLeave,TextChanged * call ale#Queue(g:ale_lint_delay) " lint on normal mode only

"" auto-pairs
let g:AutoPairsCenterLine = 0     " disable centering line at the bottom 1/3 of the window
let g:AutoPairsMultilineClose = 0 " jump to a closing pair on the same line only

"" base16
colorscheme base16-tomorrow-night

"" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_start_length = 1 " the number of input needed to provide completion

" press escape to close completion hint
inoremap <silent> <esc> <esc> :pclose<CR>

"" deoplete-clang
let g:deoplete#sources#clang#libclang_path = '/usr/lib64/libclang.so'
let g:deoplete#sources#clang#clang_header = '/usr/lib64/clang'

"" gitgutter
let g:gitgutter_max_signs = 1000 " maximum number of change signs

"" grepper
let g:grepper = {}                   " initialize g:grepper with empty dictionary
let g:grepper.tools = ['rg', 'grep'] " set order of tools to grepper

"" lightline
let g:lightline = {'colorscheme': 'Tomorrow_Night'}

"" vim-sneak
let g:sneak#label = 1 " label hints on two letters to jump to

"" vim-tmux-navigator
nnoremap <silent> <bs> :TmuxNavigateLeft<CR>
