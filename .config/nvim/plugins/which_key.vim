" data
let g:which_key_map = {}
let g:which_key_local_map = {}

" mappings
nnoremap <silent> <leader>      :WhichKey '<space>'<cr>
nnoremap <silent> <localleader> :WhichKey ','<cr>
xnoremap <silent> <leader>      :WhichKeyVisual '<space>'<cr>
xnoremap <silent> <localleader> :WhichKeyVisual ','<cr>

" others
silent! call which_key#register('<space>', 'g:which_key_map')
silent! call which_key#register(',', 'g:which_key_local_map')
