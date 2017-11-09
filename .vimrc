""""""""""
" Plugin "
""""""""""

call plug#begin('~/.vim/plugged')

" completion
if has('python3')
    Plug 'roxma/ncm-clang'
    Plug 'roxma/nvim-cm-tern', { 'do': 'npm install' }
    Plug 'roxma/nvim-completion-manager'
    Plug 'roxma/LanguageServer-php-neovim',  {'do': 'composer install && composer run-script parse-stubs'}

    if !has('nvim')
        Plug 'roxma/vim-hug-neovim-rpc'
    endif
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
Plug 'chaoren/vim-wordmotion'

" text objects
Plug 'michaeljsmith/vim-indent-object'

" tmux
Plug 'christoomey/vim-tmux-navigator'

" undo
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }

" visual
Plug 'itchyny/lightline.vim'
Plug 'rakr/vim-one'
Plug 'sheerun/vim-polyglot'
Plug 'jszakmeister/vim-togglecursor'

call plug#end()

" ale
let g:ale_lint_on_text_changed = "normal"
let g:ale_lint_on_insert_leave = 1
let g:ale_linters = {
            \ "c": [ "gcc" ],
            \ "cpp": [ "g++" ],
            \ }

" commentary
autocmd Filetype c,cpp,php setlocal commentstring=//\ %s
autocmd Filetype sql setlocal commentstring=--\ %s

" delimitmate
let g:delimitMate_matchpairs = "(:),[:],{:}"
let g:delimitMate_expand_cr = 2
let g:delimitMate_expand_space = 1
let g:delimitMate_balance_matchpairs = 1

" fugitive-gitlab
let g:fugitive_gitlab_domains = [ "https://gitlab.com", "http://gitlab.informatika.org" ]

" fzf
let g:fzf_history_dir = "~/.vim/fzf"

" gutentags
let g:gutentags_project_root = [ ".betags" ]

" grepper
runtime plugin/grepper.vim

silent! let g:grepper.tools = ["rg", "grep", "git", "ag", "ack", "findstr", "pt", "sift"]

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

" qf
let g:qf_window_bottom = 0
let g:qf_loclist_window_bottom = 0

" ncm
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

" togglecursor
let g:togglecursor_default = 'block'
let g:togglecursor_insert = 'line'
let g:togglecursor_leave = 'block'
let g:togglecursor_replace = 'underline'

" ultisnips
let g:UltiSnipsEditSplit = "horizontal"
let g:UltiSnipsSnippetDirectories = [ "snips" ]
let g:UltiSnipsExpandTrigger = "<c-f>"
let g:UltiSnipsJumpForwardTrigger = "<a-f>"
let g:UltiSnipsJumpBackwardTrigger = "<a-b>"

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
noremap <leader>x "+x
noremap <leader>X "+X

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
inoremap <silent> <c-f> <c-r>=cm#sources#ultisnips#trigger_or_popup("\<Plug>(ultisnips_expand)")<cr>

" operator remap
onoremap w :execute 'normal! '.v:count1.'w'<CR>

" command remap
cnoremap w!! w !sudo tee > /dev/null %
