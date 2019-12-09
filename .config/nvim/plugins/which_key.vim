" data
let g:which_key_map = {}

" mappings
nnoremap <silent> <leader>      :WhichKey '<space>'<cr>
nnoremap <silent> <localleader> :silent! WhichKey ','<cr>

" others
silent! call which_key#register('<space>', 'g:which_key_map')
silent! call which_key#register(',', 'b:which_key_local_map')
