" data
let g:which_key_map = {}

" options
let g:which_key_exit = ["\<esc>", "\<c-g>"]

" mappings
nnoremap <silent> <leader><leader>           :WhichKey '<leader>'<cr>
nnoremap <silent> <localleader><localleader> :WhichKey '<localleader>'<cr>

" others
silent! call which_key#register('<leader>', 'g:which_key_map')
silent! call which_key#register('<localleader>', 'b:which_key_local_map')
