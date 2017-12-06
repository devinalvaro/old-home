call plug#begin('~/.vim/plugged')

" buffer
Plug 'moll/vim-bbye'
Plug 'ap/vim-buftabline'

" completion
if has('python3')
    Plug 'roxma/nvim-completion-manager' | Plug 'roxma/vim-hug-neovim-rpc'

    Plug 'roxma/ncm-clang'
    Plug 'roxma/nvim-cm-tern', { 'do': 'yarn install' }
endif

" file management
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' } | Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-dirvish'
Plug 'mhinz/vim-grepper'
Plug 'tpope/vim-eunuch'

" git
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive' | Plug 'tpope/vim-rhubarb'

" linter
Plug 'w0rp/ale'

" quickfix
Plug 'romainl/vim-qf'

" snippet
if has('python3')
    Plug 'sirver/ultisnips' | Plug 'honza/vim-snippets'
endif

" tags
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }

" text editing
Plug 'alvan/vim-closetag'
Plug 'junegunn/vim-easy-align'
Plug 'raimondi/delimitmate'
Plug 'sbdchd/neoformat'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'

" text navigation
Plug 'chaoren/vim-wordmotion'
Plug 'junegunn/vim-slash'
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-unimpaired'

" text objects
Plug 'michaeljsmith/vim-indent-object'

" tmux
Plug 'christoomey/vim-tmux-navigator'

" undo
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }

" visual
Plug 'chrisbra/colorizer', { 'on': 'ColorToggle' }
Plug 'itchyny/lightline.vim', { 'do': 'curl -s https://gist.githubusercontent.com/devinalvaro/960d13cbb66f4716099e0febd64b392b/raw/a36349052b9d9306762d35781b82064b8e03ddd4/One.vim > ~/.vim/plugged/lightline.vim/autoload/lightline/colorscheme/One.vim' }
Plug 'rakr/vim-one'
Plug 'sheerun/vim-polyglot'

call plug#end()
