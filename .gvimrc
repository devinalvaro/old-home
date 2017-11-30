" cursor
set guicursor+=a:blinkon0

" font
if has('unix')
    set guifont=Hack\ Regular\ 17
elseif has('win32')
    set guifont=Consolas:h12
endif

" gui
set guioptions-=L
set guioptions-=T
set guioptions-=e
set guioptions-=m
set guioptions-=r

" window
set lines=34
set columns=112
