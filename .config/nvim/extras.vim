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

" formatting
Plug 'sbdchd/neoformat'

" git
Plug 'airblade/vim-gitgutter'

" linting
Plug 'w0rp/ale'

" lsp
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
runtime plugins/ale.vim
runtime plugins/better_whitespace.vim
runtime plugins/coc.vim
runtime plugins/commentary.vim
runtime plugins/cool.vim
runtime plugins/delimitemate.vim
runtime plugins/fzf.vim
runtime plugins/gitgutter.vim
runtime plugins/neoformat.vim
runtime plugins/neoterm.vim
runtime plugins/onedark.vim
runtime plugins/sneak.vim
runtime plugins/undotree.vim
runtime plugins/vinegar.vim
runtime plugins/which_key.vim

" others
runtime plugins/vsearch.vim
