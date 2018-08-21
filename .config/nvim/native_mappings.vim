" normal + visual
noremap + "+
noremap \ :

" normal
nnoremap Y y$
nnoremap <expr> i &modifiable && len(getline('.')) == 0 ? '"_cc' : 'i'

" insert
inoremap <c-u> <c-g>u<c-u>
