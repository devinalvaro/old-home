" data
let g:which_key_map['w'] = {
            \ 'name': '+windows',
            \ '/' : 'list-windows',
            \ '=' : 'balance-window',
            \ 'd' : 'delete-window',
            \ 'f' : 'goto-file-new-window',
            \ 'o' : 'only-window',
            \ 's' : 'split-window-below',
            \ 'v' : 'split-window-right',
            \ 'w' : 'other-window',
            \ }

" mappings
nnoremap <m-h> <c-w>h
nnoremap <m-j> <c-w>j
nnoremap <m-k> <c-w>k
nnoremap <m-l> <c-w>l

nnoremap <leader>w/ :Windows<cr>
nnoremap <leader>w= <c-w>=
nnoremap <leader>wd <c-w>c
nnoremap <leader>wf <c-w>f
nnoremap <leader>wo <c-w>o
nnoremap <leader>ws <c-w>s
nnoremap <leader>wv <c-w>v
nnoremap <leader>ww <c-w><c-p>
