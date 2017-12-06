""""""""""
" Plugin "
""""""""""

call plug#begin('~/.vim/plugged')

" buffer
Plug 'moll/vim-bbye'
Plug 'ap/vim-buftabline'

" completion
if has('python3')
    Plug 'roxma/nvim-completion-manager' | Plug 'roxma/vim-hug-neovim-rpc'

    Plug 'roxma/ncm-clang'
    Plug 'roxma/nvim-cm-tern', { 'do': 'yarn install' }
endif

" file management
Plug 'justinmk/vim-dirvish'
Plug 'tpope/vim-eunuch'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' } | Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-grepper'

" git
Plug 'tpope/vim-fugitive' | Plug 'tpope/vim-rhubarb'
Plug 'mhinz/vim-signify'

" linter
Plug 'w0rp/ale'

" quickfix
Plug 'romainl/vim-qf'

" snippet
if has('python3')
    Plug 'sirver/ultisnips' | Plug 'honza/vim-snippets'
endif

" tags
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }

" text editing
Plug 'tpope/vim-abolish'
Plug 'alvan/vim-closetag'
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
Plug 'junegunn/vim-slash'
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-unimpaired'
Plug 'chaoren/vim-wordmotion'

" text objects
Plug 'michaeljsmith/vim-indent-object'

" tmux
Plug 'christoomey/vim-tmux-navigator'

" undo
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }

" visual
Plug 'chrisbra/colorizer'
Plug 'itchyny/lightline.vim', { 'do': 'curl -s https://gist.githubusercontent.com/devinalvaro/960d13cbb66f4716099e0febd64b392b/raw/a36349052b9d9306762d35781b82064b8e03ddd4/One.vim > ~/.vim/plugged/lightline.vim/autoload/lightline/colorscheme/One.vim' }
Plug 'rakr/vim-one'
Plug 'sheerun/vim-polyglot'

call plug#end()

" ale
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:ale_linters = {
            \ 'c': [ 'gcc' ],
            \ 'cpp': [ 'g++' ],
            \ }

" buftabline
let g:buftabline_show = 1
let g:buftabline_indicators = 1

" closetag
let g:closetag_close_shortcut = '!>'

" commentary
autocmd Filetype c,cpp,php setlocal commentstring=//\ %s
autocmd Filetype sql setlocal commentstring=--\ %s

" delimitmate
let g:delimitMate_matchpairs = '(:),[:],{:}'
let g:delimitMate_expand_cr = 2
let g:delimitMate_expand_space = 1
let g:delimitMate_balance_matchpairs = 1

" dirvish
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1
command! -nargs=? -complete=dir Vexplore leftabove vsplit | silent Dirvish <args>
command! -nargs=? -complete=dir Sexplore belowright split | silent Dirvish <args>

" easy align
noremap gl <Plug>(EasyAlign)

" fzf
let g:fzf_history_dir = '~/.vim/fzf'

" gutentags
let g:gutentags_project_root = [ '.betags' ]
let g:gutentags_ctags_exclude = [ 'node_modules' ]

" grepper
runtime plugin/grepper.vim

silent! let g:grepper.jump = 1
silent! let g:grepper.switch = 0
silent! let g:grepper.dir = 'repo,cwd'
silent! let g:grepper.tools = [ 'rg', 'ag', 'ack', 'grep', 'git', 'findstr', 'pt', 'sift' ]

" lightline
function! LightlineFilename()
    let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
    let modified = &modified ? ' +' : ''

    return filename . modified
endfunction

function! LightlineAle()
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return printf(
            \ '✖ %d ⚠ %d',
            \ all_errors,
            \ all_non_errors
            \)
endfunction

function! LightlineGutentags()
    return gutentags#statusline('')
endfunction

let g:lightline = {
            \ 'colorscheme': 'One',
            \ 'active': {
            \   'left': [ [ 'mode' ],
            \             [ 'filename' ] ],
            \   'right': [ [ 'lineinfo' ],
            \              [ 'ale' ],
            \              [ 'gutentags' ] ]
            \ },
            \ 'inactive': {
            \   'left': [ [  ],
            \             [ 'filename' ] ],
            \   'right': [  ]
            \ },
            \ 'component_function': {
            \   'ale': 'LightlineAle',
            \   'filename': 'LightlineFilename',
            \   'gutentags': 'LightlineGutentags'
            \ }}

" matchit
runtime macros/matchit.vim

" ncm
let g:cm_refresh_length = [ [1, 4], [5, 2], [6, 3], [7, 2] ]

" neoformat
let g:neoformat_enabled_css = [ 'prettier', 'jsbeautify' ]
let g:neoformat_enabled_javascript = [ 'prettiereslint', 'prettier', 'jsbeautify' ]
let g:neoformat_enabled_json = [ 'prettier', 'jsbeautify' ]

" qf
let g:qf_window_bottom = 0
let g:qf_loclist_window_bottom = 0

" signify
let g:signify_vcs_list = [ 'git' ]
let g:signify_sign_change = '~'
let g:signify_sign_show_count = 0

" sneak
let g:sneak#label = 1

" tagbar
let g:tagbar_width = 30

" ultisnips
let g:UltiSnipsEditSplit = 'horizontal'
let g:UltiSnipsSnippetDirectories = [ 'snips' ]
let g:UltiSnipsJumpForwardTrigger = '<a-f>'
let g:UltiSnipsJumpBackwardTrigger = '<a-b>'

" undotree
let g:undotree_SetFocusWhenToggle = 1

" wordmotion
let g:wordmotion_spaces = '._-'

""""""""""
" Native "
""""""""""

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

"""""""""
" Remap "
"""""""""

" leader remap
let mapleader = "\<space>"

noremap <leader>w :w<cr>
noremap <leader>q :q<cr>

noremap <leader>p "+p
noremap <leader>P "+P
noremap <leader>y "+y
noremap <leader>Y "+y$
noremap <leader>x "+d
noremap <leader>X "+D

nnoremap <leader>c :ColorToggle<cr>
nnoremap <leader>d :Bdelete<cr>
nnoremap <leader>n :Neoformat<cr>
nnoremap <leader>r :source $MYVIMRC<cr>:nohlsearch<cr>
nnoremap <leader>t :TagbarToggle<cr>
nnoremap <leader>u :UndotreeToggle<cr>

nnoremap <leader>bc :BCommits<cr>
nnoremap <leader>bl :BLines<cr>
nnoremap <leader>bt :BTags<cr>
nnoremap <leader>fb :Buffers<cr>
nnoremap <leader>fc :Commits<cr>
nnoremap <leader>fh :History:<cr>
nnoremap <leader>fi :Files<cr>
nnoremap <leader>fl :Lines<cr>
nnoremap <leader>ft :Tags<cr>

nnoremap <leader>gb :Grepper-buffers<cr>
nnoremap <leader>gr :Grepper<cr>

" normal + visual remap
noremap 0 ^
noremap ^ 0

noremap c "_c
noremap C "_C
noremap d "_d
noremap D "_D
noremap x d
noremap X D

" normal remap
nnoremap Y y$

nnoremap cc "_cc
nnoremap dd "_dd

nnoremap <expr> i len(getline('.')) == 0 ? "\"_cc" : 'i'

" operator remap
onoremap w :execute 'normal! '.v:count1.'w'<cr>
