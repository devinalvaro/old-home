" cursor
set guicursor+=a:blinkon0

" font
if has('unix')
    set guifont=Hack\ Regular\ 17
elseif has('win32')
    set guifont=Consolas:h12
endif

" gui
set guioptions-=T
set guioptions-=L
set guioptions-=e
set guioptions-=r

" window
set lines=32
set columns=102
