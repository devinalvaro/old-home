" normal + visual
noremap + "+

" normal
nnoremap Y y$
nnoremap ga <c-^>
nnoremap gb :buffers<cr>:buffer<space>
nnoremap <expr> i &modifiable && len(getline('.')) == 0 ? '"_cc' : 'i'

" leader
nnoremap <leader>s  :StripWhitespace<cr>
nnoremap <leader>u  :UndotreeToggle<cr>
