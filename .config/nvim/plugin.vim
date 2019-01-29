call plug#begin()

" color
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'

" fzf
Plug 'junegunn/fzf.vim' | Plug 'junegunn/fzf', { 'dir': $FZF, 'do': './install --bin' }

" git
Plug 'airblade/vim-gitgutter'

" search
Plug 'junegunn/vim-slash'
Plug 'justinmk/vim-sneak'
Plug 'mhinz/vim-grepper'
Plug 'romainl/vim-qf'

" text editing
Plug 'ntpeters/vim-better-whitespace'
Plug 'raimondi/delimitmate'
Plug 'tommcdo/vim-lion'
Plug 'wellle/targets.vim'

" tpope
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'

" undo
Plug 'mbbill/undotree'

call plug#end()

" better whitespace
let g:better_whitespace_guicolor = '#e06c75'

" delimitmate
let g:delimitMate_balance_matchpairs = 1
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1

" fzf
let g:fzf_layout = { 'down': '10' }

" go
let g:go_fmt_command = 'goimports'
let g:go_term_mode = 'split'
let g:go_version_warning = 0

" grepper
let g:grepper = {
            \ 'dir': 'filecwd',
            \ 'jump': 1,
            \ 'quickfix': 0,
            \ 'switch': 0,
            \ }

" onedark
let g:onedark_color_overrides = {
            \ 'comment_grey': { 'gui': '#7f848e', 'cterm': '59', 'cterm16': '15' },
            \ 'gutter_fg_grey': { 'gui': '#515a6b', 'cterm': '238', 'cterm16': '15' },
            \ 'special_grey': { 'gui': '#7f848e', 'cterm': '238', 'cterm16': '15' },
            \ 'vertsplit': { 'gui': '#515a6b', 'cterm': '59', 'cterm16': '15' },
            \ }

silent! colorscheme onedark

" polyglot - go
let g:go_highlight_function_calls = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_types = 1

highlight default link goFunctionCall Constant

" qf
let g:qf_auto_open_quickfix = 0

" sneak
let g:sneak#label = 1

" undotree
let g:undotree_SetFocusWhenToggle = 1

" vinegar
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
