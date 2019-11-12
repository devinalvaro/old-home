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
            \ 'H' : 'move-window-to-left',
            \ 'J' : 'move-window-to-bottom',
            \ 'K' : 'move-window-to-top',
            \ 'L' : 'move-window-to-right',
            \ 'R' : 'rotate-windows-up-left',
            \ 'T' : 'move-window-to-tab',
            \ 'b' : 'bottom-right-window',
            \ 'd' : 'delete-window',
            \ 'f' : 'go-to-file-on-new-window',
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
nnoremap <m-h>           <c-w>h
nnoremap <m-j>           <c-w>j
nnoremap <m-k>           <c-w>k
nnoremap <m-l>           <c-w>l
inoremap <m-h>      <esc><c-w>h
inoremap <m-j>      <esc><c-w>j
inoremap <m-k>      <esc><c-w>k
inoremap <m-l>      <esc><c-w>l
tnoremap <m-h> <c-\><c-n><c-w>h
tnoremap <m-j> <c-\><c-n><c-w>j
tnoremap <m-k> <c-\><c-n><c-w>k
tnoremap <m-l> <c-\><c-n><c-w>l

nnoremap          <leader>w+ <c-w>+
nnoremap          <leader>w- <c-w>-
nnoremap <silent> <leader>w/ :Windows<cr>
nnoremap          <leader>w< <c-w><
nnoremap          <leader>w= <c-w>=
nnoremap          <leader>w> <c-w>>
nnoremap          <leader>w] <c-w>]
nnoremap          <leader>wH <c-w>H
nnoremap          <leader>wJ <c-w>J
nnoremap          <leader>wK <c-w>K
nnoremap          <leader>wL <c-w>L
nnoremap          <leader>wR <c-w>R
nnoremap          <leader>wT <c-w>T
nnoremap          <leader>wb <c-w>b
nnoremap          <leader>wd <c-w>q
nnoremap          <leader>wf <c-w>f
nnoremap          <leader>wo <c-w>o
nnoremap          <leader>wp <c-w>P
nnoremap          <leader>wr <c-w>r
nnoremap          <leader>ws <c-w>s
nnoremap          <leader>wt <c-w>t
nnoremap          <leader>wv <c-w>v
nnoremap          <leader>ww <c-w>p
nnoremap          <leader>wx <c-w>x
nnoremap          <leader>wz <c-w>z
