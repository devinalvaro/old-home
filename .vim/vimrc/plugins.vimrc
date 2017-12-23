call plug#begin('~/.vim/plugged')

" buffer
Plug 'moll/vim-bbye'
Plug 'mgee/lightline-bufferline'

" completion
if has('python3')
    Plug 'roxma/nvim-completion-manager' | Plug 'roxma/vim-hug-neovim-rpc'

    Plug 'roxma/ncm-clang'
    Plug 'roxma/nvim-cm-tern', { 'do': 'yarn install' }
endif

" file management
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' } | Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-dirvish'
Plug 'mhinz/vim-grepper'
Plug 'tpope/vim-eunuch'

" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive' | Plug 'tpope/vim-rhubarb'

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
Plug 'majutsushi/tagbar'

" text editing
Plug 'alvan/vim-closetag'
Plug 'junegunn/vim-easy-align'
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

" tmux
Plug 'christoomey/vim-tmux-navigator'

" undo
Plug 'mbbill/undotree'

" visual
Plug 'chrisbra/colorizer'
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'

call plug#end()

" ale
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:ale_linters = {
            \ 'c': [ 'gcc' ],
            \ 'cpp': [ 'g++' ],
            \ }

" closetag
let g:closetag_close_shortcut = '!>'

" colorizer
let g:colorizer_colornames = 0

" commentary
autocmd Filetype c,cpp,php setlocal commentstring=//\ %s
autocmd Filetype sql setlocal commentstring=--\ %s

" delimitmate
let g:delimitMate_matchpairs = '(:),[:],{:}'
let g:delimitMate_expand_cr = 2
let g:delimitMate_expand_space = 1
let g:delimitMate_balance_matchpairs = 1

" dirvish
let g:dirvish_mode = ':sort ,^.*/,'

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
let g:gutentags_generate_on_new = 0

" grepper
runtime plugin/grepper.vim

silent! let g:grepper.jump = 1
silent! let g:grepper.switch = 0
silent! let g:grepper.dir = 'filecwd'
silent! let g:grepper.tools = [ 'rg', 'ag', 'ack', 'grep', 'git', 'findstr', 'pt', 'sift' ]

" lightline
let g:lightline = {
            \ 'colorscheme': 'onedark',
            \ 'active': {
            \   'left': [ [  ],
            \             [  ],
            \             [ 'buffers' ] ],
            \   'right': [ [  ],
            \              [ 'gutentags' ] ]
            \ },
            \ 'inactive': {
            \   'left': [ [ 'filename' ],
            \             [  ] ],
            \   'right': [  ]
            \ },
            \ 'subseparator': {
            \   'left': '',
            \   'right': '',
            \ },
            \ 'component_function': {
            \   'filename': 'LightlineFilename',
            \   'gutentags': 'LightlineGutentags'
            \ },
            \ 'component_expand': {
            \   'buffers': 'lightline#bufferline#buffers'
            \ },
            \ 'component_type': {
            \   'buffers': 'tabsel'
            \ }}

let g:lightline#bufferline#filename_modifier = ':p:~:.'
let g:lightline#bufferline#unnamed = '[No Name]'

autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()

" matchit
runtime macros/matchit.vim

" ncm
let g:cm_refresh_length = [ [1, 4], [5, 3], [7, 2] ]

" neoformat
let g:neoformat_enabled_css = [ 'prettier', 'jsbeautify' ]
let g:neoformat_enabled_javascript = [ 'prettiereslint', 'prettier', 'jsbeautify' ]
let g:neoformat_enabled_json = [ 'prettier', 'jsbeautify' ]

" qf
let g:qf_window_bottom = 0
let g:qf_loclist_window_bottom = 0

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
