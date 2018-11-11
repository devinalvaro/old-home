" normal + visual
noremap + "+

" normal
nnoremap Y y$
nnoremap ga <c-^>
nnoremap <expr> i &modifiable && len(getline('.')) == 0 ? '"_cc' : 'i'

" insert
inoremap <c-u> <c-g>u<c-u>
