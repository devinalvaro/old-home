" data
let g:which_key_map['w'] = {
            \ 'name': '+window',
            \ '+' : 'increase-window-height',
            \ '-' : 'decrease-window-height',
            \ '/' : 'list-windows',
            \ '<' : 'decrease-window-width',
            \ '=' : 'balance-window',
            \ '>' : 'increase-window-width',
            \ ']' : 'jump-to-tag-on-new-window',
            \ 'R' : 'rotate-windows-up-left',
            \ 'T' : 'move-window-to-tab',
            \ 'b' : 'bottom-right-window',
            \ 'd' : 'delete-window',
            \ 'f' : 'go-to-file-on-new-window',
            \ 'h' : 'move-window-to-left',
            \ 'j' : 'move-window-to-bottom',
            \ 'k' : 'move-window-to-top',
            \ 'l' : 'move-window-to-right',
            \ 'o' : 'only-window',
            \ 'p' : 'preview-window',
            \ 'r' : 'rotate-windows-down-right',
            \ 's' : 'split-window-below',
            \ 't' : 'top-left-window',
            \ 'v' : 'split-window-right',
            \ 'w' : 'other-window',
            \ 'x' : 'exchange-window',
            \ 'z' : 'close-preview-window',
            \ }

" mappings
nnoremap <m-h> <c-w>h
nnoremap <m-j> <c-w>j
nnoremap <m-k> <c-w>k
nnoremap <m-l> <c-w>l

nnoremap <leader>w+ <c-w>+
nnoremap <leader>w- <c-w>-
nnoremap <leader>w/ :Windows<cr>
nnoremap <leader>w< <c-w><
nnoremap <leader>w= <c-w>=
nnoremap <leader>w> <c-w>>
nnoremap <leader>w] <c-w>]
nnoremap <leader>wR <c-w>R
nnoremap <leader>wT <c-w>T
nnoremap <leader>wb <c-w>b
nnoremap <leader>wd <c-w>c
nnoremap <leader>wf <c-w>f
nnoremap <leader>wh <c-w>H
nnoremap <leader>wj <c-w>J
nnoremap <leader>wk <c-w>K
nnoremap <leader>wl <c-w>L
nnoremap <leader>wo <c-w>o
nnoremap <leader>wp <c-w>P
nnoremap <leader>wr <c-w>r
nnoremap <leader>ws <c-w>s
nnoremap <leader>wt <c-w>t
nnoremap <leader>wv <c-w>v
nnoremap <leader>ww <c-w>p
nnoremap <leader>wx <c-w>x
nnoremap <leader>wz <c-w>z
