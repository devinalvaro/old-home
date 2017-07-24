""""""""""""
"" Plugin ""
""""""""""""

call plug#begin('~/.config/nvim/plugged')

"" completion
Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-clang'
Plug 'zchee/deoplete-jedi'
Plug 'shougo/neoinclude.vim'

"" file management
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all --no-update-rc' }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-grepper'

"" git
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

"" lint
Plug 'w0rp/ale'

"" snippet
Plug 'sirver/ultisnips'

"" tags
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }

"" text editing
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'raimondi/delimitmate'
Plug 'tpope/vim-endwise'
Plug 'sbdchd/neoformat'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'

"" text navigation
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-unimpaired'

"" text objects
Plug 'michaeljsmith/vim-indent-object'
Plug 'wellle/targets.vim'

"" tmux
Plug 'wellle/tmux-complete.vim'
Plug 'christoomey/vim-tmux-navigator'

"" undo
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }

"" visual
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'

call plug#end()

"" ale
let g:ale_cpp_clangcheck_executable = ""
let g:ale_lint_on_text_changed = "normal"
autocmd InsertLeave * ALELint

"" delimitmate
let g:delimitMate_expand_cr = 2
let g:delimitMate_expand_space = 1
let g:delimitMate_balance_matchpairs = 1
let g:delimitMate_matchpairs = "(:),[:],{:}"

"" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_start_length = 1
autocmd InsertLeave * if pumvisible() == 0 | pclose | endif

"" deoplete-clang
let g:deoplete#sources#clang#libclang_path = "/usr/lib/llvm-4.0/lib/libclang.so"
let g:deoplete#sources#clang#clang_header = "/usr/lib/clang"

"" deoplete-jedi
let g:deoplete#sources#jedi#show_docstring = 1

"" gitgutter
let g:gitgutter_grep_command = "rg"

"" grepper
let g:grepper = {}
let g:grepper.tools = [ "rg", "grep" ]

"" signify
let g:signify_vcs_list = [ "git" ]
let g:signify_realtime = 1
let g:signify_sign_change = "~"
let g:signify_sign_show_count = 0

"" sneak
let g:sneak#label = 1

"" ultisnips
let g:UltiSnipsExpandTrigger = "<c-f>"
let g:UltiSnipsEditSplit = "horizontal"
let g:UltiSnipsJumpForwardTrigger = "<a-f>"
let g:UltiSnipsJumpBackwardTrigger = "<a-b>"
let g:UltiSnipsSnippetsDir = "~/.config/nvim/snips"
let g:UltiSnipsSnippetDirectories = [ "snips" ]

""""""""""""""""""""
"" Documentation """
""""""""""""""""""""

autocmd FileType cpp setlocal keywordprg=:term\ cppman
autocmd FileType matlab setlocal keywordprg=:term\ info\ octave\ --index-search
autocmd FileType python setlocal keywordprg=:term\ pydoc
autocmd FileType vim setlocal keywordprg=:help

""""""""""""
"" Native ""
""""""""""""

"" backup
set nobackup
set noswapfile

"" buffer
set hidden
set splitright
set splitbelow
autocmd VimResized * wincmd =

"" color
set termguicolors

"" colorscheme
colorscheme onedark
highlight Normal guibg=none guifg=#d6d6d6
highlight Comment guifg=#899099
highlight LineNr guifg=#7a8088
highlight StatusLine guifg=#d6d6d6
highlight VertSplit guifg=#abb2bf

"" command line
set noshowcmd
set noshowmode

"" confirmation
set confirm

"" cursor
set guicursor=n-v-c:block,i-ci-ve:ver100,r-cr:hor100,o:hor100
      \,a:blinkwait0-blinkoff0-blinkon100

"" indentation
set expandtab
set softtabstop=4
set shiftwidth=4
set shiftround

"" matching
set showmatch
set matchpairs+=<:>

"" number
set numberwidth=2

"" redrawing
set lazyredraw

"" scroll
set scrolljump=-50

"" search
set smartcase
set ignorecase
set gdefault
set inccommand=nosplit

"" status
set statusline=%f\ %M\ %=\ %{fugitive#head()}\ 🐧\ %l:%v

"" undo
set undofile

"" wrapping
set breakindent

"""""""""""
"" Remap ""
"""""""""""

"" leader remap
let mapleader = "\<space>"

noremap <leader>w :w<CR>
noremap <leader>q :q<CR>

noremap <leader>p "+p
noremap <leader>P "+P
noremap <leader>y "+y
noremap <leader>Y "+Y

nnoremap <leader>r :source $MYVIMRC<CR>

nnoremap <leader>fi :Files<CR>
nnoremap <leader>ft :Tags<CR>
nnoremap <leader>gr :Grepper<CR>
nnoremap <leader>gb :Grepper-buffers<CR>
nnoremap <leader>ne :Neoformat<CR>
nnoremap <leader>tt :TagbarToggle<CR>
nnoremap <leader>ut :UndotreeToggle<CR>

"" normal/visual remap
noremap c "_c
noremap C "_C
noremap d "_d
noremap D "_D

noremap x d
noremap X D

"" normal remap
nnoremap Y y$

nnoremap 0 ^
nnoremap ^ 0

nnoremap cc "_cc
nnoremap dd "_dd

nnoremap <silent> <ESC> :nohlsearch<CR>

nnoremap <expr> i len(getline('.')) == 0 ? "\"_cc" : 'i'

nnoremap <expr> k (v:count > 1 ? "m'" . v:count : '') . 'k'
nnoremap <expr> j (v:count > 1 ? "m'" . v:count : '') . 'j'

"" visual remap
vnoremap <silent> * :<C-U>
            \ let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
            \ gvy/<C-R><C-R>=substitute(
            \ escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
            \ gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
            \ let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
            \ gvy?<C-R><C-R>=substitute(
            \ escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
            \ gV:call setreg('"', old_reg, old_regtype)<CR>

"" command remap
cnoremap w!! w !sudo tee > /dev/null %
