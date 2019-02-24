call plug#begin()

" editing
Plug 'ntpeters/vim-better-whitespace'
Plug 'raimondi/delimitmate'
Plug 'tommcdo/vim-lion'
Plug 'wellle/targets.vim'

" git
Plug 'airblade/vim-gitgutter'

" search
Plug 'justinmk/vim-sneak'

" highligting
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'

" tpope
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'

" undo
Plug 'mbbill/undotree'

call plug#end()

runtime plugins/better_whitespace.vim
runtime plugins/coc.vim
runtime plugins/commentary.vim
runtime plugins/delimitemate.vim
runtime plugins/onedark.vim
runtime plugins/undotree.vim
runtime plugins/vsearch.vim
