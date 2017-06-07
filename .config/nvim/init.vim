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
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'mhinz/vim-grepper'

"" git
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

"" lint
Plug 'w0rp/ale'

"" tags
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }

"" text editing
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'raimondi/delimitmate'
Plug 'junegunn/vim-easy-align'
Plug 'sbdchd/neoformat'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'ap/vim-you-keep-using-that-word'

"" text navigation
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-unimpaired'

"" text objects
Plug 'michaeljsmith/vim-indent-object'
Plug 'kana/vim-textobj-function'
Plug 'bps/vim-textobj-python'
Plug 'kana/vim-textobj-user'

"" tmux
Plug 'wellle/tmux-complete.vim'
Plug 'christoomey/vim-tmux-navigator'

"" undo
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }

"" visual
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'

call plug#end()

"" ale
let g:ale_lint_on_text_changed='normal'
let g:ale_lint_on_insert_leave=1

"" delimitmate
let g:delimitMate_expand_cr=2
let g:delimitMate_expand_space=1
let g:delimitMate_balance_matchpairs=1
let g:delimitMate_matchpairs="(:),[:],{:}"

"" deoplete
let g:deoplete#enable_at_startup=1
let g:deoplete#auto_complete_start_length=1
autocmd InsertLeave * if pumvisible() == 0 | pclose | endif

"" deoplete-clang
let g:deoplete#sources#clang#libclang_path='/usr/lib/libclang.so'
let g:deoplete#sources#clang#clang_header='/usr/lib/clang'

"" easy-align
map gl <Plug>(EasyAlign)

"" gitgutter
let g:gitgutter_grep_command='rg'

"" grepper
let g:grepper={}
let g:grepper.tools=[ 'rg', 'ag', 'grep' ]

"" lightline
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'filename' ] ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightlineFugitive',
      \   'readonly': 'LightlineReadonly',
      \   'modified': 'LightlineModified',
      \   'filename': 'LightlineFilename'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

function! LightlineModified()
  return &modified ? '+' : ''
endfunction

function! LightlineReadonly()
  return &readonly ? '' : ''
endfunction

function! LightlineFugitive()
  return exists("*fugitive#head") && fugitive#head() !=# '' ? 
        \ ' '.fugitive#head() : ''
endfunction

function! LightlineFilename()
  return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
       \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
       \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction

"" signify
let g:signify_vcs_list=[ 'git' ]
let g:signify_realtime=1
let g:signify_sign_change='~'
let g:signify_sign_show_count=0

"" sneak
let g:sneak#label=1

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

"" color
set termguicolors
colorscheme onedark
highlight Normal guibg=none guifg=#d6d6d6
highlight Comment guifg=#899099
highlight LineNr guifg=#7a8088

"" confirmation
set confirm

"" cursor
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
            \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
            \,sm:block-blinkwait175-blinkoff150-blinkon175

"" indentation
set expandtab
set softtabstop=4
set shiftwidth=4
set shiftround

"" matching
set showmatch
set matchpairs+=<:>

"" mouse
set mouse=a

"" number
set relativenumber
set numberwidth=2

"" redrawing
set lazyredraw

"" search
set smartcase
set ignorecase

"" undo
set undofile
set undodir=~/.local/share/nvim/undo/

""""""""""
"" Misc ""
""""""""""

"" leader remaps
let mapleader="\<space>"

noremap <leader>w :w<CR>
noremap <leader>q :q<CR>

noremap <leader>d "+d
noremap <leader>p "+p
noremap <leader>y "+y
noremap <leader>D "+D
noremap <leader>P "+P
noremap <leader>Y "+Y

nnoremap <leader>r :source $VIMRC<CR>

nnoremap <leader>o :FZF<CR>
nnoremap <leader>f :Grepper<CR>
nnoremap <leader>n :Neoformat<CR>
nnoremap <leader>t :TagbarToggle<CR>
nnoremap <leader>u :UndotreeToggle<CR>

"" command remap
cnoremap w!! w !sudo tee > /dev/null %

"" other remaps
nnoremap Y y$
nnoremap 0 ^
nnoremap ^ 0

nnoremap <silent> <ESC> :noh<CR>

nnoremap <expr> i len(getline('.')) == 0 ? "\"_cc" : 'i'
nnoremap <expr> k (v:count > 1 ? "m'" . v:count : '') . 'k'
nnoremap <expr> j (v:count > 1 ? "m'" . v:count : '') . 'j'
