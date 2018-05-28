call plug#begin()

" completion
if has('nvim')
    Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'zchee/deoplete-go', {' do': 'make' }
endif

" documentations
Plug 'rhysd/devdocs.vim'

" file management
Plug 'tpope/vim-eunuch'

" file navigation
Plug 'airblade/vim-rooter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' } | Plug 'junegunn/fzf.vim'
Plug 'kris2k/a.vim'
Plug 'mhinz/vim-grepper'
Plug 'tpope/vim-vinegar'

" languages
Plug 'fatih/vim-go'

" language server protocols
if has('nvim')
    Plug 'autozimu/languageclient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
endif

" linting
Plug 'w0rp/ale'

" list
Plug 'romainl/vim-qf'

" snippet
if has('python3')
    Plug 'sirver/ultisnips' | Plug 'honza/vim-snippets'
endif

" tags
Plug 'ludovicchabant/vim-gutentags'

" text editing
Plug 'conradirwin/vim-bracketed-paste'
Plug 'raimondi/delimitmate'
Plug 'tommcdo/vim-lion'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'wellle/targets.vim'

" text formatting
Plug 'sbdchd/neoformat'

" text navigation
Plug 'junegunn/vim-slash'
Plug 'tpope/vim-unimpaired'

" text objects
Plug 'michaeljsmith/vim-indent-object'

" undo
Plug 'mbbill/undotree'

" version control
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive' | Plug 'tpope/vim-rhubarb'

" visual
Plug 'chrisbra/colorizer'
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'markonm/traces.vim'
Plug 'sheerun/vim-polyglot'

call plug#end()

" ale
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:ale_linters = {
            \ 'c': [ 'gcc' ],
            \ 'cpp': [ 'g++' ],
            \ }

" colorizer
let g:colorizer_colornames = 0

" commentary
augroup Commentary
    autocmd!
    autocmd Filetype c,cpp,cs,php setlocal commentstring=//\ %s
    autocmd Filetype sql setlocal commentstring=--\ %s
augroup END

" delimitmate
let g:delimitMate_matchpairs = '(:),[:],{:}'
let g:delimitMate_expand_cr = 2
let g:delimitMate_expand_space = 1
let g:delimitMate_balance_matchpairs = 1

augroup Delimitmate
    autocmd!
    autocmd Filetype clojure,lisp,racket,scheme let g:delimitMate_expand_cr = 1
augroup END

" deoplete
let g:deoplete#enable_at_startup = 1

" devdocs
let g:devdocs_url = 'http://localhost:9292'

" fzf
let g:fzf_layout = { 'down': '10' }
let g:fzf_history_dir = '~/.local/share/nvim/fzf'

if executable('rg')
    command! -bang -nargs=* Rg
                \ call fzf#vim#grep(
                \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
                \   <bang>0 ? fzf#vim#with_preview('up:60%')
                \           : fzf#vim#with_preview('right:50%:hidden', '?'),
                \   <bang>0)
endif

" gitgutter
if executable('rg')
    let g:gitgutter_grep = 'rg'
endif

" gutentags
if !executable('ctags')
    let g:gutentags_enabled = 0
endif

let g:gutentags_project_root = [ '.betags' ]
let g:gutentags_generate_on_write = 0
let g:gutentags_generate_on_empty_buffer = 1
let g:gutentags_ctags_tagfile = '.tags'

" go
augroup Go
    autocmd!
    autocmd Filetype go cnoreabbrev A GoAlternate
augroup END

" grepper
let g:grepper = {
            \ 'jump': 1,
            \ 'switch': 0,
            \ 'dir': 'filecwd',
            \ 'tools': [ 'rg', 'ag', 'ack', 'grep', 'git', 'findstr', 'pt', 'sift' ]
            \ }

" languageclient-neovim
let g:LanguageClient_serverCommands = {
            \ 'cpp': [ 'cquery' ],
            \ 'javascript': [ 'javascript-typescript-stdio' ],
            \ 'python': [ 'pyls' ],
            \ }
let g:LanguageClient_diagnosticsDisplay = {
            \ 1: { 'name': 'Error', 'signText': '>>' },
            \ 2: { 'name': 'Warning', 'signText': '--' },
            \ 3: { 'name': 'Information', 'signText': '--' },
            \ 4: { 'name': 'Hint', 'signText': '--' },
            \ }
let g:LanguageClient_diagnosticsList = 'Location'
let g:LanguageClient_settingsPath = $HOME . '/.config/nvim/configs/langclient.json'

" lightline
function! LightlineFilename() abort
    let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
    let modified = &modified ? ' +' : ''
    let readonly = &readonly ? ' -' : ''
    return filename . modified . readonly
endfunction

let g:lightline = {
            \ 'colorscheme': 'onedark',
            \ 'active': {
            \   'left': [ [  ], [ 'lightline_filename', 'filetype' ] ],
            \   'right': [ [  ], [ 'fileformat', 'fileencoding' ] ],
            \ },
            \ 'inactive': {
            \   'left': [ [  ], [ 'lightline_filename'  ] ],
            \   'right': [  ],
            \ },
            \ 'component_function': {
            \   'lightline_filename': 'LightlineFilename',
            \ }}

" matchit
runtime! macros/matchit.vim

" onedark
let g:onedark_color_overrides = {
            \ 'comment_grey': { 'gui': '#828997', 'cterm': '59', 'cterm16': '15' },
            \ 'gutter_fg_grey': { 'gui': '#828997', 'cterm': '59', 'cterm16': '15' },
            \ 'vertsplit': { 'gui': '#828997', 'cterm': '59', 'cterm16': '15' },
            \ }

" polyglot
let g:jsx_ext_required = 1

" rooter
let g:rooter_manual_only = 1

" sleuth
let g:sleuth_automatic = 0

" ultisnips
let g:UltiSnipsEditSplit = 'horizontal'
let g:UltiSnipsSnippetDirectories = [ 'snips' ]
let g:UltiSnipsJumpForwardTrigger = '<a-f>'
let g:UltiSnipsJumpBackwardTrigger = '<a-b>'

" undotree
let g:undotree_SetFocusWhenToggle = 1
