" options
let g:which_key_map['w'] = {
            \ 'name': '+windows',
            \ '=' : 'balance-window',
            \ 'c' : 'close-window',
            \ 'h' : 'window-left',
            \ 'j' : 'window-below',
            \ 'k' : 'window-up',
            \ 'l' : 'window-right',
            \ 'o' : 'only-window',
            \ 's' : 'split-window-below',
            \ 'v' : 'split-window-right',
            \ 'w' : 'other-window',
            \ }

nnoremap <silent> <leader>w= <C-W>=
nnoremap          <leader>wc <C-W>c
nnoremap <silent> <leader>wh <C-W>h
nnoremap <silent> <leader>wj <C-W>j
nnoremap <silent> <leader>wk <C-W>k
nnoremap <silent> <leader>wl <C-W>l
nnoremap <silent> <leader>wo <C-W>o
nnoremap          <leader>ws <C-W>s
nnoremap          <leader>wv <C-W>v
nnoremap          <leader>ww <C-W>w
