""""""""""
" Plugin "
""""""""""

call plug#begin('~/.config/nvim/plugged')

" completion
Plug 'roxma/clang_complete'
Plug 'roxma/nvim-completion-manager'

" file search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all --no-key-bindings --no-update-rc' }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-grepper'

" git
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

" lint
Plug 'w0rp/ale'

" quickfix
Plug 'romainl/vim-qf'

" snippet
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'

" tags
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }

" text editing
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'raimondi/delimitmate'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-endwise'
Plug 'sbdchd/neoformat'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'

" text navigation
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-unimpaired'

" text objects
Plug 'michaeljsmith/vim-indent-object'

" tmux
Plug 'christoomey/vim-tmux-navigator'

" undo
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }

" visual
Plug 'rakr/vim-one'
Plug 'sheerun/vim-polyglot'

call plug#end()

" ale
let g:ale_lint_on_text_changed = "normal"
let g:ale_lint_on_insert_leave = 1
let g:ale_linters = {
            \ "c": [ "gcc" ],
            \ "cpp": [ "g++" ],
            \ "py": [ "pylint" ]
            \ }

" delimitmate
let g:delimitMate_matchpairs = "(:),[:],{:}"
let g:delimitMate_expand_cr = 2
let g:delimitMate_expand_space = 1
let g:delimitMate_balance_matchpairs = 1

" clang_complete
let g:clang_library_path = "/usr/lib/llvm-3.8/lib"

" easy-align
noremap gl <Plug>(EasyAlign)

" fzf
let g:fzf_history_dir = "~/.local/share/nvim/fzf"

" gutentags
let g:gutentags_project_root = [ ".betags" ]

" qf
let g:qf_window_bottom = 0
let g:qf_loclist_window_bottom = 0

" neoformat
let g:neoformat_enabled_c = [ "clangformat" ]
let g:neoformat_enabled_cpp = [ "clangformat" ]
let g:neoformat_enabled_python = [ "yapf" ]

" nvim-completion-manager
let g:cm_refresh_length = [ [ 1, 4 ], [7, 2] ]

" signify
let g:signify_vcs_list = [ "git" ]
let g:signify_sign_change = "~"
let g:signify_sign_show_count = 0

" sleuth
let g:sleuth_automatic = 0

" sneak
let g:sneak#label = 1

" tagbar
let g:tagbar_left = 1
let g:tagbar_width = 30
let g:tagbar_autofocus = 1

" ultisnips
let g:UltiSnipsEditSplit = "horizontal"
let g:UltiSnipsSnippetDirectories = [ "snips" ]
let g:UltiSnipsExpandTrigger = "<c-f>"
let g:UltiSnipsJumpForwardTrigger = "<a-f>"
let g:UltiSnipsJumpBackwardTrigger = "<a-b>"

" undotree
let g:undotree_SetFocusWhenToggle = 1

""""""""""
" Native "
""""""""""

" backup
set nobackup
set noswapfile

" buffer
set hidden
set splitright
set splitbelow
autocmd VimResized * wincmd =

" color
set background=dark
set termguicolors

colorscheme one

call one#highlight('Normal', 'none', 'none', '')
call one#highlight('Comment', '8e94a1', '', '')
call one#highlight('LineNr', '828997', '', '')
call one#highlight('StatusLine', '', '353940', '')
call one#highlight('StatusLineNC', '353940', 'abb2bf', '')
call one#highlight('vertSplit', '828997', '', '')
call one#highlight('vimLineComment', '8e94a1', '', '')

highlight TagbarSignature guifg=#8e94a1

" compatible
set cpoptions-=_

" confirmation
set confirm

" cursor
set guicursor=n-v-c-ci-sm:block,i-ve:ver100,r-cr-o:hor100
            \,a:blinkwait100-blinkoff100-blinkon100

" indentation
set expandtab
set shiftround
set shiftwidth=4
set softtabstop=4

" matching
set matchpairs+=<:>
set showmatch

" messages
set noshowcmd
set noshowmode
set shortmess+=cF

" number
set numberwidth=2

" redrawing
set lazyredraw

" scroll
set scrolljump=-50

" search
set gdefault
set ignorecase
set smartcase

" statusline
set statusline=%f\ %M\ %=\ %{gutentags#statusline('tags')}\ %{fugitive#head()}\ %l:%v

" tags
set tagcase=match

" undo
set undofile

" wrapping
set breakindent
set linebreak
let &showbreak = "↳ "

"""""""""
" Remap "
"""""""""

" leader remap
let mapleader = "\<space>"

noremap <leader>w :w<CR>
noremap <leader>q :q<CR>

noremap <leader>p "+p
noremap <leader>P "+P
noremap <leader>y "+y
noremap <leader>Y "+Y

nnoremap <leader>r :source $MYVIMRC<CR>

nnoremap <leader>fi :Files<CR>
nnoremap <leader>fb :BTags<CR>
nnoremap <leader>ft :Tags<CR>
nnoremap <leader>gr :Grepper<CR>
nnoremap <leader>gb :Grepper-buffers<CR>
nnoremap <leader>n :Neoformat<CR>
nnoremap <leader>t :TagbarToggle<CR>
nnoremap <leader>u :UndotreeToggle<CR>

" normal/visual remap
noremap c "_c
noremap C "_C
noremap d "_d
noremap D "_D

noremap x d
noremap X D

" normal remap
nnoremap Y y$

nnoremap 0 ^
nnoremap ^ 0

nnoremap cc "_cc
nnoremap dd "_dd

nnoremap <silent> <ESC> :nohlsearch<CR>

nnoremap <expr> i len(getline('.')) == 0 ? "\"_cc" : 'i'

nnoremap <expr> k (v:count > 1 ? "m'" . v:count : '') . 'k'
nnoremap <expr> j (v:count > 1 ? "m'" . v:count : '') . 'j'

" visual remap
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

" command remap
cnoremap w!! w !sudo tee > /dev/null %
