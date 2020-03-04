" ---- plugins ---- "

call plug#begin()

" buffer
Plug 'moll/vim-bbye'

" default
Plug 'tpope/vim-sensible'

" editing
Plug 'jiangmiao/auto-pairs'
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

" fzf
Plug 'junegunn/fzf.vim' | Plug 'junegunn/fzf'

" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" language
Plug 'fatih/vim-go', { 'tag': 'v1.22' }

" linting
Plug 'dense-analysis/ale'

" lsp
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" highligting
Plug 'arcticicestudio/nord-vim'
Plug 'sheerun/vim-polyglot'

" movement
Plug 'chaoren/vim-wordmotion'
Plug 'justinmk/vim-sneak'
Plug 'rhysd/clever-f.vim'

" quickfix
Plug 'romainl/vim-qf'

" search
Plug 'google/vim-searchindex'
Plug 'haya14busa/vim-asterisk'
Plug 'mhinz/vim-grepper'
Plug 'romainl/vim-cool'

" undo
Plug 'mbbill/undotree'

" visual
Plug 'itchyny/lightline.vim'
Plug 'liuchengxu/vim-which-key'

" whitespace
Plug 'ntpeters/vim-better-whitespace'

call plug#end()

" ---- components ---- "

runtime! plugins/*.vim
runtime! modules/*.vim

" ---- colorscheme ---- "

silent! colorscheme nord
