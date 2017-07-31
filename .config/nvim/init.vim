""""""""""
" Plugin "
""""""""""

call plug#begin('~/.config/nvim/plugged')

" completion
Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-clang'
Plug 'zchee/deoplete-jedi'
Plug 'shougo/neoinclude.vim'

" file management
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all --no-update-rc' }
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
Plug 'wellle/tmux-complete.vim'
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
let g:ale_cpp_clangcheck_executable = ""

" delimitmate
let g:delimitMate_matchpairs = "(:),[:],{:}"
let g:delimitMate_expand_cr = 2
let g:delimitMate_expand_space = 1
let g:delimitMate_balance_matchpairs = 1

" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_buffer_path = 1
autocmd InsertLeave * if pumvisible() == 0 | pclose | endif

" deoplete-clang
let g:deoplete#sources#clang#libclang_path = "/usr/lib/llvm-3.8/lib/libclang.so.1"
let g:deoplete#sources#clang#clang_header = "/usr/lib/clang"

" deoplete-jedi
let g:deoplete#sources#jedi#show_docstring = 1

" easy-align
noremap gl <Plug>(EasyAlign)

" gutentags
let g:gutentags_project_root = [ ".betags" ]

" qf
let g:qf_window_bottom = 0
let g:qf_loclist_window_bottom = 0

" signify
let g:signify_vcs_list = [ "git" ]
let g:signify_sign_change = "~"

" sneak
let g:sneak#label = 1

" tagbar
let g:tagbar_left = 1
let g:tagbar_width = 30
let g:tagbar_autofocus = 1

" ultisnips
let g:UltiSnipsEditSplit = "horizontal"
let g:UltiSnipsSnippetsDir = "~/.config/nvim/snips"
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
set termguicolors
set background=dark

" colorscheme
colorscheme one

call one#highlight('Normal', 'none', 'none', '')
call one#highlight('Comment', '8e94a1', '', '')
call one#highlight('vimLineComment', '8e94a1', '', '')
call one#highlight('vertSplit', '828997', '', '')
call one#highlight('StatusLine', '', '353940', '')
call one#highlight('StatusLineNC', '353940', 'abb2bf', '')
call one#highlight('LineNr', '828997', '', '')

highlight TagbarSignature guifg=#8e94a1

" command line
set noshowcmd
set noshowmode

" confirmation
set confirm

" cursor
set guicursor=a:blinkon100

" documentation
autocmd FileType vim setlocal keywordprg=:help

" indentation
set expandtab
set softtabstop=4
set shiftwidth=4
set shiftround

" matching
set showmatch
set matchpairs+=<:>

" motion
set cpoptions-=_

" number
set numberwidth=2

" redrawing
set lazyredraw

" scroll
set scrolljump=-50

" search
set smartcase
set ignorecase
set gdefault
set inccommand=nosplit

" status
set statusline=%f\ %M\ %=\ %{gutentags#statusline('tags')}\ %{fugitive#head()}\ %l:%v

" undo
set undofile

" wrapping
set breakindent

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
nnoremap <leader>ft :Tags<CR>
nnoremap <leader>fb :BTags<CR>
nnoremap <leader>gr :Grepper<CR>
nnoremap <leader>gb :Grepper-buffers<CR>
nnoremap <leader>nf :Neoformat<CR>
nnoremap <leader>tt :TagbarToggle<CR>
nnoremap <leader>ut :UndotreeToggle<CR>

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
