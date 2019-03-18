" ---- plugins ---- "

call plug#begin()

" editing
Plug 'justinmk/vim-sneak'
Plug 'raimondi/delimitmate'
Plug 'tommcdo/vim-lion'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'wellle/targets.vim'

" file
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-vinegar'

" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" highligting
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'

" undo
Plug 'mbbill/undotree'

" whitespace
Plug 'ntpeters/vim-better-whitespace'

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
