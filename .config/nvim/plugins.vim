call plug#begin()

" completion
Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', {' do': 'make' }

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

" language server protocol
Plug 'autozimu/languageclient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }

" linting & formatting
Plug 'sbdchd/neoformat'
Plug 'w0rp/ale'

" navigation
Plug 'airblade/vim-rooter'
Plug 'justinmk/vim-dirvish'

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
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'

" undo
Plug 'mbbill/undotree'

call plug#end()

" ale
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_text_changed = 'normal'
let g:ale_set_highlights = 0
let g:ale_set_quickfix = 1

" better whitespace
let g:better_whitespace_guicolor = '#e06c75'

" colorizer
let g:colorizer_colornames = 0

" delimitmate
let g:delimitMate_balance_matchpairs = 1
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1

" deoplete
let g:deoplete#enable_at_startup = 1
silent! call deoplete#custom#option('min_pattern_length', 1)

" dirvish
let g:dirvish_relative_paths = 1
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1

command! -nargs=? -complete=dir Explore silent Dirvish <args>
command! -nargs=? -complete=dir Sexplore split | silent Dirvish <args>
command! -nargs=? -complete=dir Vexplore vsplit | silent Dirvish <args>

" fzf
let g:fzf_history_dir = $HOME . '/.local/share/nvim/fzf'
let g:fzf_layout = { 'down': '10' }

" go
let g:go_fmt_command = 'goimports'
let g:go_term_mode = 'split'

" gutentags
let g:gutentags_generate_on_empty_buffer = 1
let g:gutentags_generate_on_new = 0
let g:gutentags_generate_on_write = 0
set statusline+=%{gutentags#statusline()}

" grepper
let g:grepper = {
            \ 'dir': 'filecwd',
            \ 'jump': 1,
            \ 'quickfix': 0,
            \ 'switch': 0,
            \ 'tools': [ 'rg', 'ag', 'ack', 'grep', 'git', 'findstr', 'pt', 'sift' ],
            \ }

" languageclient
let g:LanguageClient_serverCommands = {
            \ 'c': [ 'clangd' ], 'cpp': [ 'clangd' ],
            \ 'javascript': [ 'javascript-typescript-stdio' ],
            \ 'python': [ 'pyls' ],
            \ 'ruby': [ 'solargraph',  'stdio' ],
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

" polyglot - jsx
let g:jsx_ext_required = 1

" qf
let g:qf_auto_open_quickfix = 0

" rooter
let g:rooter_resolve_links = 1
let g:rooter_use_lcd = 1

" sneak
let g:sneak#label = 1

" ultisnips
let g:UltiSnipsJumpBackwardTrigger = '<a-b>'
let g:UltiSnipsJumpForwardTrigger = '<a-f>'
let g:UltiSnipsSnippetDirectories = [ 'snips' ]

" undotree
let g:undotree_SetFocusWhenToggle = 1

" wordmotion
let g:wordmotion_spaces = '_-.'
