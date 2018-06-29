call plug#begin()

" completion
Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', {' do': 'make' }

" color
Plug 'chrisbra/colorizer'
Plug 'joshdick/onedark.vim'

" ctags
Plug 'ludovicchabant/vim-gutentags'

" documentation
Plug 'rhysd/devdocs.vim'

" fzf
Plug 'junegunn/fzf.vim'

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
Plug 'ericcurtin/curtineincsw.vim'
Plug 'airblade/vim-rooter'

" quickfix & loclist
Plug 'romainl/vim-qf'

" search
Plug 'junegunn/vim-slash'
Plug 'mhinz/vim-grepper'

" snippet
Plug 'sirver/ultisnips' | Plug 'honza/vim-snippets'

" text editing
Plug 'michaeljsmith/vim-indent-object'
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
Plug 'tpope/vim-vinegar'

" undo
Plug 'mbbill/undotree'

call plug#end()

" ale
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_text_changed = 'normal'
let g:ale_set_quickfix = 1

let g:ale_linters = {
            \ "c": [],
            \ "cpp": [],
            \ }

" colorizer
let g:colorizer_colornames = 0

" delimitmate
let g:delimitMate_balance_matchpairs = 1
let g:delimitMate_expand_cr = 2
let g:delimitMate_expand_space = 1

" deoplete
let g:deoplete#enable_at_startup = 1

" fzf
let g:fzf_history_dir = $HOME . '/.local/share/nvim/fzf'
let g:fzf_layout = { 'down': '10' }

" gitgutter
if executable('rg')
    let g:gitgutter_grep = 'rg'
endif

" gutentags
let g:gutentags_project_root = [ '.betags' ]

if !executable('ctags')
    let g:gutentags_enabled = 0
endif

" go
let g:go_fmt_command = "goimports"

" grepper
let g:grepper = {
            \ 'dir': 'filecwd',
            \ 'jump': 1,
            \ 'quickfix': 0,
            \ 'switch': 0,
            \ 'tools': [ 'rg', 'ag', 'ack', 'grep', 'git', 'findstr', 'pt', 'sift' ],
            \ }

" languageclient
let g:LanguageClient_autoStop = 0

let g:LanguageClient_serverCommands = {
            \ 'c': [ 'clangd' ],
            \ 'cpp': [ 'clangd' ],
            \ 'javascript': [ 'javascript-typescript-stdio' ],
            \ 'python': [ 'pyls' ],
            \ 'ruby': [ 'tcp://localhost:7658' ],
            \ }

" matchit
runtime! macros/matchit.vim

" onedark
let g:onedark_color_overrides = {
            \ 'comment_grey': { 'gui': '#828997', 'cterm': '59', 'cterm16': '15' },
            \ 'gutter_fg_grey': { 'gui': '#828997', 'cterm': '59', 'cterm16': '15' },
            \ 'special_grey': { 'gui': '#828997', 'cterm': '59', 'cterm16': '15' },
            \ 'vertsplit': { 'gui': '#828997', 'cterm': '59', 'cterm16': '15' },
            \ }

" polyglot
let g:jsx_ext_required = 1

" rooter
let g:rooter_manual_only = 1

" ultisnips
let g:UltiSnipsEditSplit = 'horizontal'
let g:UltiSnipsJumpBackwardTrigger = '<a-b>'
let g:UltiSnipsJumpForwardTrigger = '<a-f>'
let g:UltiSnipsSnippetDirectories = [ 'snips' ]

" undotree
let g:undotree_SetFocusWhenToggle = 1
