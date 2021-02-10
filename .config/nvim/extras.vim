" ---- plugins ---- "

call plug#begin()

" buffer
Plug 'moll/vim-bbye'

" default
Plug 'tpope/vim-sensible'

" editing
Plug 'cohama/lexima.vim'
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

" interface
Plug 'itchyny/lightline.vim'

" language
Plug 'elixir-editors/vim-elixir'

" linting
Plug 'dense-analysis/ale'

" lsp
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" highligting
Plug 'arcticicestudio/nord-vim'
if has('nvim-0.5')
    Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSInstall all \| TSUpdate' }
else
    Plug 'sheerun/vim-polyglot'
endif

" movement
Plug 'chaoren/vim-wordmotion'
Plug 'justinmk/vim-sneak'

" quickfix
Plug 'romainl/vim-qf'

" search
Plug 'haya14busa/vim-asterisk'

" undo
Plug 'mbbill/undotree'

" whitespace
Plug 'ntpeters/vim-better-whitespace'

call plug#end()

" ---- components ---- "

runtime! plugins/*.vim
if has('nvim-0.5')
    runtime! plugins/*.vim.nightly
endif
runtime! modules/*.vim

" ---- colorscheme ---- "

silent! colorscheme nord
