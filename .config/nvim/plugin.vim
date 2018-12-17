call plug#begin()

" completion
Plug 'ncm2/ncm2' | Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-go'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-vim-lsp'

" color
Plug 'chrisbra/colorizer'
Plug 'joshdick/onedark.vim'

" ctags
Plug 'ludovicchabant/vim-gutentags'

" fzf
Plug 'junegunn/fzf.vim' | Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }

" git
Plug 'airblade/vim-gitgutter'

" language support
Plug 'fatih/vim-go'
Plug 'sheerun/vim-polyglot'

" language server
Plug 'prabirshrestha/vim-lsp' | Plug 'prabirshrestha/async.vim'

" latex
Plug 'lervag/vimtex'

" linting & formatting
Plug 'sbdchd/neoformat'
Plug 'w0rp/ale'

" navigation
Plug 'airblade/vim-rooter'

" quickfix & loclist
Plug 'romainl/vim-qf'

" search
Plug 'junegunn/vim-slash'
Plug 'justinmk/vim-sneak'
Plug 'mhinz/vim-grepper'

" snippet
Plug 'sirver/ultisnips' | Plug 'honza/vim-snippets'

" text editing
Plug 'chaoren/vim-wordmotion'
Plug 'michaeljsmith/vim-indent-object'
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

" ale
let g:ale_echo_msg_format = '%linter%: %s'
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_text_changed = 'normal'
let g:ale_set_quickfix = 1

" better whitespace
let g:better_whitespace_guicolor = '#e06c75'

" colorizer
let g:colorizer_colornames = 0

" delimitmate
let g:delimitMate_balance_matchpairs = 1
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1

" fzf
let g:fzf_history_dir = '~/.local/share/nvim/fzf'
let g:fzf_layout = { 'down': '10' }

" go
let g:go_fmt_command = 'goimports'
let g:go_term_mode = 'split'
let g:go_version_warning = 0

" gutentags
if !executable('ctags')
    let g:gutentags_enabled = 0
endif
let g:gutentags_ctags_tagfile = '.tags'
let g:gutentags_generate_on_empty_buffer = 1
let g:gutentags_generate_on_new = 0
let g:gutentags_generate_on_write = 0

" grepper
let g:grepper = {
            \ 'dir': 'filecwd',
            \ 'jump': 1,
            \ 'quickfix': 0,
            \ 'switch': 0,
            \ }

" onedark
let g:onedark_color_overrides = {
            \ 'black': { 'gui': '#202020', 'cterm': '235', 'cterm16': '0' },
            \ 'comment_grey': { 'gui': '#7f848e', 'cterm': '59', 'cterm16': '15' },
            \ 'gutter_fg_grey': { 'gui': '#515a6b', 'cterm': '238', 'cterm16': '15' },
            \ 'special_grey': { 'gui': '#7f848e', 'cterm': '238', 'cterm16': '15' },
            \ 'vertsplit': { 'gui': '#515a6b', 'cterm': '59', 'cterm16': '15' },
            \ }

silent! colorscheme onedark

" polyglot
let g:polyglot_disabled = ['latex']

" polyglot - go
let g:go_highlight_function_calls = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_types = 1

highlight default link goFunctionCall Constant

" polyglot - jsx
let g:jsx_ext_required = 1

" qf
let g:qf_auto_open_quickfix = 0

" vimtex
let g:vimtex_compiler_progname = 'nvr'

" rooter
let g:rooter_manual_only = 1
let g:rooter_resolve_links = 1
let g:rooter_use_lcd = 1

" sleuth
let g:sleuth_automatic = 0

" sneak
let g:sneak#label = 1

" ultisnips
let g:UltiSnipsJumpBackwardTrigger = '<a-b>'
let g:UltiSnipsJumpForwardTrigger = '<a-f>'
let g:UltiSnipsSnippetDirectories = [ 'snips' ]

" undotree
let g:undotree_SetFocusWhenToggle = 1

" vinegar
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'

" wordmotion
let g:wordmotion_spaces = '_-.'
