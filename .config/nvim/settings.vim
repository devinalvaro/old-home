" buffer
set hidden

" color
set termguicolors

silent! colorscheme onedark

" column
set signcolumn=yes
set numberwidth=2

" completion
set completeopt+=menuone,noinsert,noselect
set completeopt-=menu
set pumheight=10

augroup Completion
    autocmd!
    autocmd InsertLeave * if pumvisible() == 0 | pclose | endif
augroup END

" confirmation
set confirm

" cursor
set nostartofline

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[0 q"

" indentation
set expandtab
set shiftround
set shiftwidth=4
set tabstop=4

" markdown
augroup Markdown
    autocmd!
    if executable('md')
        autocmd Filetype markdown autocmd BufWritePost <buffer> silent !md -u %
    endif
augroup END

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

command! -bang StripTrailingWhitespace :%s/\s\+$//e

" window
set splitright
set splitbelow

augroup Window
    autocmd!
    autocmd VimResized * wincmd =
augroup END

" wrapping
set breakindent
set linebreak

let &showbreak = '↳ '
