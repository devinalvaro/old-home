call plug#begin('~/.vim/plugged')

" completion
if v:version >= 800
    Plug 'prabirshrestha/async.vim'
    Plug 'prabirshrestha/asyncomplete-gocode.vim'
    Plug 'prabirshrestha/asyncomplete-lsp.vim'
    Plug 'prabirshrestha/asyncomplete-ultisnips.vim'
    Plug 'prabirshrestha/asyncomplete.vim'
endif

" documentation
Plug 'powerman/vim-plugin-viewdoc'

" file management
Plug 'tpope/vim-eunuch'

" file navigation
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-dirvish'
Plug 'kris2k/a.vim'
Plug 'mhinz/vim-grepper'

" language server
if v:version >= 800
    Plug 'felixfbecker/php-language-server', { 'do': 'composer install && composer run-script parse-stubs' }
    Plug 'prabirshrestha/vim-lsp'
endif

" linting
Plug 'w0rp/ale'

" quickfix
Plug 'romainl/vim-qf'

" snippet
if has('python3')
    Plug 'sirver/ultisnips' | Plug 'honza/vim-snippets'
endif

" tags
Plug 'ludovicchabant/vim-gutentags'

" text editing
Plug 'alvan/vim-closetag'
Plug 'raimondi/delimitmate'
Plug 'sbdchd/neoformat'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'

" text navigation
Plug 'chaoren/vim-wordmotion'
Plug 'junegunn/vim-slash'
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-unimpaired'

" text objects
Plug 'michaeljsmith/vim-indent-object'

" undo
Plug 'mbbill/undotree'

" version control
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

" visual
Plug 'chrisbra/colorizer'
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot' | Plug 'sevko/vim-nand2tetris-syntax'

call plug#end()

" ale
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:ale_linters = {
            \ 'c': [ 'gcc' ],
            \ 'cpp': [ 'g++' ],
            \ 'php': [ 'php' ]
            \ }

" closetag
let g:closetag_close_shortcut = '!>'

" colorizer
let g:colorizer_colornames = 0

" commentary
autocmd Filetype c,cpp,cs,php setlocal commentstring=//\ %s
autocmd Filetype sql setlocal commentstring=--\ %s

" delimitmate
let g:delimitMate_matchpairs = '(:),[:],{:}'
let g:delimitMate_expand_cr = 2
let g:delimitMate_expand_space = 1
let g:delimitMate_balance_matchpairs = 1

autocmd Filetype clojure,lisp,racket,scheme let g:delimitMate_expand_cr = 1

" dirvish
let g:dirvish_mode = ':sort ,^.*/,'

let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1

command! -nargs=1 -complete=dir Vexplore leftabove vsplit | silent Dirvish <args>
command! -nargs=1 -complete=dir Sexplore belowright split | silent Dirvish <args>

" fzf
let g:fzf_history_dir = '~/.vim/fzf'

" gutentags
if !executable('ctags')
    let g:gutentags_enabled = 0
endif

let g:gutentags_project_root = [ '.betags' ]
let g:gutentags_generate_on_new = 0

" grepper
runtime plugin/grepper.vim

silent! let g:grepper.jump = 1
silent! let g:grepper.switch = 0
silent! let g:grepper.dir = 'filecwd'
silent! let g:grepper.tools = [ 'rg', 'ag', 'ack', 'grep', 'git', 'findstr', 'pt', 'sift' ]

" lightline
function! LightlineFilename() abort
    let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
    let modified = &modified ? ' +' : ''
    let readonly = &readonly ? ' -' : ''

    return filename . modified . readonly
endfunction

function! LightlineGutentags() abort
    return gutentags#statusline('')
endfunction

let g:lightline = {
            \ 'colorscheme': 'onedark',
            \ 'active': {
            \   'left': [ [  ],
            \             [ 'lightline_filename' ] ],
            \   'right': [ [  ],
            \              [ 'fileformat', 'fileencoding', 'filetype' ],
            \              [ 'lightline_gutentags' ] ],
            \ },
            \ 'inactive': {
            \   'left': [ [  ],
            \             [ 'lightline_filename' ] ],
            \   'right': [ [  ],
            \              [  ],
            \              [ 'fileformat', 'fileencoding', 'filetype' ] ],
            \ },
            \ 'component_function': {
            \   'lightline_filename': 'LightlineFilename',
            \   'lightline_gutentags': 'LightlineGutentags'
            \ }}

" matchit
runtime macros/matchit.vim

" neoformat
let g:neoformat_enabled_css = [ 'prettier' ]
let g:neoformat_enabled_javascript = [ 'prettiereslint' ]
let g:neoformat_enabled_json = [ 'prettier' ]

" onedark
let g:onedark_color_overrides = {
            \ 'comment_grey': { 'gui': '#8c919a', 'cterm': '59', 'cterm16': '15' },
            \ 'vertsplit': { 'gui': '#8c919a', 'cterm': '59', 'cterm16': '15' }
            \ }

" qf
let g:qf_window_bottom = 0
let g:qf_loclist_window_bottom = 0

" signify
let g:signify_vcs_list = [ 'git' ]
let g:signify_sign_change = '~'
let g:signify_sign_show_count = 0

" sneak
let g:sneak#label = 1

" ultisnips
let g:UltiSnipsEditSplit = 'horizontal'
let g:UltiSnipsSnippetDirectories = [ 'snips' ]
let g:UltiSnipsJumpForwardTrigger = '<a-f>'
let g:UltiSnipsJumpBackwardTrigger = '<a-b>'

" undotree
let g:undotree_SetFocusWhenToggle = 1

" viewdoc
let g:no_viewdoc_abbrev = [ ':doc', ':help', ':h', ':perldoc', ':godoc', ':pydoc', ':pman', ':infman', ':rdoc' ]
let g:viewdoc_open = 'botright new'

" wordmotion
let g:wordmotion_spaces = '_-.'
