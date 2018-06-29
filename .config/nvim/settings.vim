" buffer
set hidden

" color
set termguicolors

silent! colorscheme onedark

" column
set numberwidth=2
set signcolumn=yes

" completion
set completeopt+=menuone,noinsert,noselect
set pumheight=10

" confirmation
set confirm

" cursor
set nostartofline

" indentation
set expandtab
set shiftround
set shiftwidth=4
set tabstop=4

" matching
set showmatch

" message
set noruler
set noshowcmd
set noshowmode
set shortmess+=cF

" scroll
set scrolloff=1
set sidescrolloff=5

" search
set gdefault
set ignorecase
set inccommand=nosplit
set smartcase

" swap
set noswapfile

" statusline
set statusline=
      \\ %{&filetype!=#''?&filetype:'none'}
      \\ %{&readonly\|\|!&modifiable?&modified?'%*':'%%':&modified?'**':'--'}
      \\ %{expand('%:~:.')!=#''?expand('%:~:.'):'[No\ Name]'}
      \%=
      \%l/%L%1(%)
      \%p%%%1(%)

" undo
set undofile

" update
set lazyredraw
set updatetime=150

" whitespace
highlight TrailingWhitespace ctermbg=red guibg=#e06c75
match TrailingWhitespace /\s\+$/

" window
set splitbelow
set splitright

" wrapping
set breakindent
set linebreak

let &showbreak = '↳ '
