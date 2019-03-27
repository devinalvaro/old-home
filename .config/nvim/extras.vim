" ---- plugins ---- "

call plug#begin()

" editing
Plug 'raimondi/delimitmate'
Plug 'rhysd/clever-f.vim'
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
Plug 'justinmk/vim-dirvish'
Plug 'tpope/vim-eunuch'

" formatting
Plug 'sbdchd/neoformat'

" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" languages
Plug 'lervag/vimtex'

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

" tags
Plug 'ludovicchabant/vim-gutentags'

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
runtime plugins/dirvish.vim
runtime plugins/eunuch.vim
runtime plugins/fzf.vim
runtime plugins/gitgutter.vim
runtime plugins/gutentags.vim
runtime plugins/neoterm.vim
runtime plugins/onedark.vim
runtime plugins/undotree.vim
runtime plugins/vimtex.vim
runtime plugins/vsearch.vim
runtime plugins/which_key.vim

" modules
runtime modules/buffers.vim
runtime modules/dirs.vim
runtime modules/files.vim
runtime modules/git.vim
runtime modules/mode.vim
runtime modules/quit.vim
runtime modules/search.vim
runtime modules/term.vim
runtime modules/windows.vim
