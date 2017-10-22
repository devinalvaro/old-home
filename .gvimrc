" cursor
set guicursor+=a:blinkon0

" directory
set autochdir

" font
if has('unix')
    set guifont=Hack\ Regular\ 17
elseif has('win32')
    set guifont=Consolas:h12
endif

" gui
set guioptions-=T
set guioptions-=L
set guioptions-=r

" window
set lines=34
set columns=102
