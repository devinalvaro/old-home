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
Plug 'justinmk/vim-syntax-extra'
Plug 'sheerun/vim-polyglot'

" quickfix
Plug 'romainl/vim-qf'

" search
Plug 'haya14busa/vim-asterisk'
Plug 'justinmk/vim-sneak'
Plug 'mhinz/vim-grepper'
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

runtime! plugins/*.vim
runtime! modules/*.vim

" ---- colorscheme ---- "

silent! colorscheme onedark
