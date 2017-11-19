""""""""""
" Plugin "
""""""""""

call plug#begin('~/.vim/plugged')

" completion
Plug 'maralla/completor.vim', { 'do': 'make js' }

" file navigation
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' } | Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-grepper'
Plug 'tpope/vim-vinegar'

" git
Plug 'tpope/vim-fugitive' | Plug 'shumphrey/fugitive-gitlab.vim'
Plug 'tpope/vim-rhubarb'
Plug 'mhinz/vim-signify'

" lint
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
Plug 'chaoren/vim-wordmotion'

" text objects
Plug 'michaeljsmith/vim-indent-object'
Plug 'coderifous/textobj-word-column.vim'

" tmux
Plug 'christoomey/vim-tmux-navigator'

" undo
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }

" visual
Plug 'itchyny/lightline.vim', { 'do': 'curl -s https://gist.githubusercontent.com/devinalvaro/960d13cbb66f4716099e0febd64b392b/raw/a36349052b9d9306762d35781b82064b8e03ddd4/One.vim > ~/.vim/plugged/lightline.vim/autoload/lightline/colorscheme/One.vim' }
Plug 'rakr/vim-one'
Plug 'sheerun/vim-polyglot'
Plug 'jszakmeister/vim-togglecursor'

call plug#end()

" ale
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:ale_linters = {
            \ 'c': [ 'gcc' ],
            \ 'cpp': [ 'g++' ],
            \ }

" commentary
autocmd Filetype c,cpp,php setlocal commentstring=//\ %s
autocmd Filetype sql setlocal commentstring=--\ %s

" completor
let g:completor_python_binary = '/usr/bin/python3'
let g:completor_node_binary = '/usr/bin/node'
let g:completor_clang_binary = '/usr/bin/clang'
let g:completor_auto_close_doc = 0
let g:completor_min_chars = 3

" delimitmate
let g:delimitMate_matchpairs = '(:),[:],{:}'
let g:delimitMate_expand_cr = 2
let g:delimitMate_expand_space = 1
let g:delimitMate_balance_matchpairs = 1

" fugitive-gitlab
let g:fugitive_gitlab_domains = [ 'https://gitlab.com', 'http://gitlab.informatika.org' ]

" fzf
let g:fzf_history_dir = '~/.vim/fzf'

" gutentags
let g:gutentags_ctags_tagfile = '.tags'
let g:gutentags_project_root = [ '.betags' ]

" grepper
runtime plugin/grepper.vim

silent! let g:grepper.tools = ['rg', 'ag', 'ack', 'grep', 'git', 'findstr', 'pt', 'sift']

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
            \ },
            \ }

" neoformat
let g:neoformat_enabled_javascript = [ 'standard' ]

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
let g:tagbar_left = 1
let g:tagbar_width = 30

" togglecursor
let g:togglecursor_default = 'block'
let g:togglecursor_insert = 'line'
let g:togglecursor_leave = 'block'
let g:togglecursor_replace = 'underline'

" ultisnips
let g:UltiSnipsEditSplit = 'horizontal'
let g:UltiSnipsSnippetDirectories = [ 'snips' ]
let g:UltiSnipsExpandTrigger = '<c-f>'
let g:UltiSnipsJumpForwardTrigger = '<a-f>'
let g:UltiSnipsJumpBackwardTrigger = '<a-b>'

" undotree
let g:undotree_SetFocusWhenToggle = 1

" wordmotion
let g:wordmotion_spaces = '_-'

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

    set background=dark
    silent! colorscheme one
endif

if has('termguicolors') || has ('gui_running') && g:colors_name == 'one'
    highlight Normal ctermfg=none ctermfg=none
    highlight Comment guifg=#8e94a1
    highlight LineNr guifg=#828997
    highlight StatusLine guibg=#353940
    highlight StatusLineNC guifg=#353940 guibg=#abb2bf
    highlight vertSplit guifg=#828997
    highlight vimLineComment guifg=#8e94a1

    highlight TagbarSignature guifg=#8e94a1
endif

" completion
set complete-=i
set previewheight=2
autocmd InsertLeave * if pumvisible() == 0 | pclose | endif

" confirmation
set confirm

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

noremap <leader>w :w<CR>
noremap <leader>q :q<CR>

noremap <leader>p "+p
noremap <leader>P "+P
noremap <leader>y "+y
noremap <leader>Y "+Y
noremap <leader>x "+x
noremap <leader>X "+X

nnoremap <leader>n :Neoformat<CR>
nnoremap <leader>r :source $MYVIMRC<ESC><CR>
nnoremap <leader>t :TagbarToggle<CR>
nnoremap <leader>u :UndotreeToggle<CR>

nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>fi :Files<CR>
nnoremap <leader>fl :Lines<CR>
nnoremap <leader>ft :Tags<CR>

nnoremap <leader>gb :Grepper-buffers<CR>
nnoremap <leader>gr :Grepper<CR>

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
vnoremap <silent> * :<C-u>
            \ let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
            \ gvy/<C-r><C-r>=substitute(
            \ escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
            \ gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-u>
            \ let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
            \ gvy?<C-r><C-r>=substitute(
            \ escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
            \ gV:call setreg('"', old_reg, old_regtype)<CR>

" operator remap
onoremap w :execute 'normal! '.v:count1.'w'<CR>

" command remap
cnoremap w!! w !sudo tee > /dev/null %
