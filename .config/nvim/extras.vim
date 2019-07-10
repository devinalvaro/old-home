" ---- plugins ---- "

call plug#begin()

" buffer
Plug 'moll/vim-bbye'

" default
Plug 'tpope/vim-sensible'

" editing
Plug 'raimondi/delimitmate'
Plug 'rhysd/clever-f.vim'
Plug 'tommcdo/vim-lion'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'wellle/targets.vim'

" file
Plug 'justinmk/vim-dirvish'
Plug 'tpope/vim-eunuch'

" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" formatting
Plug 'sbdchd/neoformat'

" language
Plug 'fatih/vim-go', { 'tag': 'v1.20', 'do': ':GoUpdateBinaries' }
Plug 'lervag/vimtex'

" linting
Plug 'w0rp/ale', { 'tag': 'v2.5.0' }

" lsp
Plug 'neoclide/coc.nvim', { 'tag': 'v0.0.72', 'do': 'yarn install --frozen-lockfile' }

" fzf
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" highligting
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'

" quickfix
Plug 'romainl/vim-qf'

" search
Plug 'haya14busa/vim-asterisk'
Plug 'justinmk/vim-sneak'
Plug 'romainl/vim-cool'

" tags
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'

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
runtime plugins/asterisk.vim
runtime plugins/better_whitespace.vim
runtime plugins/clever_f.vim
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
runtime plugins/qf.vim
runtime plugins/sneak.vim
runtime plugins/undotree.vim
runtime plugins/vimtex.vim
runtime plugins/which_key.vim

" modules
runtime modules/buffer.vim
runtime modules/dir.vim
runtime modules/file.vim
runtime modules/git.vim
runtime modules/other.vim
runtime modules/search.vim
runtime modules/term.vim
runtime modules/window.vim

" ---- colorscheme ---- "

colorscheme onedark
