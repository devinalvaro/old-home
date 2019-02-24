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

" language
Plug 'neoclide/coc.nvim', { 'tag': '*', 'do': { -> coc#util#install() } }

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

runtime components/better_whitespace.vim
runtime components/coc.vim
runtime components/commentary.vim
runtime components/delimitemate.vim
runtime components/fzf.vim
runtime components/onedark.vim
runtime components/sneak.vim
runtime components/undotree.vim
runtime components/vinegar.vim
runtime components/vsearch.vim
