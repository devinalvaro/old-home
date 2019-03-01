" ---- plugins ---- "

call plug#begin()

" editing
Plug 'justinmk/vim-sneak'
Plug 'ntpeters/vim-better-whitespace'
Plug 'raimondi/delimitmate'
Plug 'tommcdo/vim-lion'
Plug 'wellle/targets.vim'

" git
Plug 'airblade/vim-gitgutter'

" search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

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

" ---- components ---- "

" plugins
runtime components/plugins/better_whitespace.vim
runtime components/plugins/commentary.vim
runtime components/plugins/delimitemate.vim
runtime components/plugins/fzf.vim
runtime components/plugins/onedark.vim
runtime components/plugins/sneak.vim
runtime components/plugins/undotree.vim
runtime components/plugins/vinegar.vim

" others
runtime components/vsearch.vim
