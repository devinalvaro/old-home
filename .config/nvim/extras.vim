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
Plug 'airblade/vim-gitgutter'

" langauge
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'neoclide/coc.nvim', { 'tag': '*', 'do': { -> coc#util#install() } }

" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" highligting
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'

" search
Plug 'romainl/vim-cool'

" term
Plug 'kassio/neoterm'

" undo
Plug 'mbbill/undotree'

" visual
Plug 'liuchengxu/vim-which-key'

" whitespace
Plug 'ntpeters/vim-better-whitespace'

call plug#end()

" ---- components ---- "

" plugins
runtime components/plugins/better_whitespace.vim
runtime components/plugins/coc.vim
runtime components/plugins/commentary.vim
runtime components/plugins/cool.vim
runtime components/plugins/delimitemate.vim
runtime components/plugins/fzf.vim
runtime components/plugins/neoterm.vim
runtime components/plugins/onedark.vim
runtime components/plugins/sneak.vim
runtime components/plugins/undotree.vim
runtime components/plugins/vinegar.vim
runtime components/plugins/which_key.vim

" others
runtime components/vsearch.vim
