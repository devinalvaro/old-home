""""""""""
" Plugin "
""""""""""

call plug#begin('~/.config/nvim/plugged')

" completion
if has('nvim') && has('python3')
    Plug 'roxma/clang_complete'
    Plug 'roxma/nvim-cm-tern', { 'do': 'npm install' }
    Plug 'roxma/nvim-completion-manager'
endif

" file search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-grepper'

" git
Plug 'tpope/vim-fugitive'
Plug 'shumphrey/fugitive-gitlab.vim'
Plug 'tpope/vim-rhubarb'
Plug 'mhinz/vim-signify'

" lint
Plug 'w0rp/ale'

" quickfix
Plug 'romainl/vim-qf'

" snippet
if has('python3')
    Plug 'sirver/ultisnips'
    Plug 'honza/vim-snippets'
endif

" tags
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }

" text editing
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'raimondi/delimitmate'
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

" clang_complete
let g:clang_library_path = "/usr/lib/llvm-3.8/lib/libclang-3.8.so.1"

" delimitmate
let g:delimitMate_matchpairs = "(:),[:],{:}"
let g:delimitMate_expand_cr = 2
let g:delimitMate_expand_space = 1
let g:delimitMate_balance_matchpairs = 1

" fugitive-gitlab
let g:fugitive_gitlab_domains = [ 'https://gitlab.com', 'http://gitlab.informatika.org' ]

" fzf
let g:fzf_history_dir = "~/.local/share/nvim/fzf"

" gutentags
let g:gutentags_project_root = [ ".betags" ]

" grepper
runtime plugin/grepper.vim

let g:grepper.tools = ['rg', 'grep', 'git', 'ag', 'ack', 'findstr', 'pt', 'sift']

" qf
let g:qf_window_bottom = 0
let g:qf_loclist_window_bottom = 0

" neoformat
let g:neoformat_enabled_c = [ "clangformat" ]
let g:neoformat_enabled_cpp = [ "clangformat" ]
let g:neoformat_enabled_python = [ "yapf" ]

" nvim-completion-manager
let g:cm_refresh_length = [ [ 1, 3 ], [7, 2] ]

" signify
let g:signify_vcs_list = [ "git" ]
let g:signify_sign_change = "~"
let g:signify_sign_show_count = 0

" sleuth
let g:sleuth_automatic = 1

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
if has('termguicolors')
    set termguicolors

    set background=dark
    colorscheme one
endif

if has('termguicolors') && g:colors_name == 'one'
    highlight Normal ctermfg=none ctermfg=none
    highlight Comment guifg=#8e94a1
    highlight LineNr guifg=#828997
    highlight StatusLine guibg=#353940
    highlight StatusLineNC guifg=#353940 guibg=#abb2bf
    highlight vertSplit guifg=#828997
    highlight vimLineComment guifg=#8e94a1

    highlight TagbarSignature guifg=#8e94a1
endif

" compatible
set cpoptions-=_

" confirmation
set confirm

" cursor
if has('nvim')
    set guicursor+=a:blinkon1
elseif has('gui')
    set guicursor+=a:blinkon0
endif

" indentation
set expandtab
set tabstop=4
set softtabstop=4
set shiftround
set shiftwidth=4

" matching
set matchpairs+=<:>
set showmatch

" messages
set noshowcmd
set noshowmode
set shortmess+=cFI

" number
set numberwidth=2

" redrawing
set lazyredraw

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

nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>fi :Files<CR>
nnoremap <leader>fl :Lines<CR>
nnoremap <leader>ft :Tags<CR>

nnoremap <leader>gb :Grepper-buffers<CR>
nnoremap <leader>gr :Grepper<CR>

nnoremap <leader>n :Neoformat<CR>
nnoremap <leader>t :TagbarToggle<CR>
nnoremap <leader>u :UndotreeToggle<CR>

" normal + visual remap
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

" insert remap
inoremap <c-c> <ESC>
inoremap <silent> <c-f> <c-r>=cm#sources#ultisnips#trigger_or_popup("\<Plug>(ultisnips_expand)")<cr>

" command remap
cnoremap w!! w !sudo tee > /dev/null %
