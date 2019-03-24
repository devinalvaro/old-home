" options
let g:which_key_map['w'] = {
            \ 'name': '+windows',
            \ '=' : 'balance-window',
            \ 'c' : 'close-window',
            \ 'f' : 'goto-file-new-window',
            \ 'h' : 'window-left',
            \ 'j' : 'window-below',
            \ 'k' : 'window-up',
            \ 'l' : 'window-right',
            \ 'o' : 'only-window',
            \ 's' : 'split-window-below',
            \ 'v' : 'split-window-right',
            \ 'w' : 'other-window',
            \ }

nnoremap <leader>w= <c-w>=
nnoremap <leader>wc <c-w>c
nnoremap <leader>wf <c-w>f
nnoremap <leader>wh <c-w>h
nnoremap <leader>wj <c-w>j
nnoremap <leader>wk <c-w>k
nnoremap <leader>wl <c-w>l
nnoremap <leader>wo <c-w>o
nnoremap <leader>ws <c-w>s
nnoremap <leader>wv <c-w>v
nnoremap <leader>ww <c-w>w
