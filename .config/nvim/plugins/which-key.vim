" data
let g:which_key_map = {}

" options
let g:which_key_exit = ["\<esc>", "\<c-g>"]
let g:which_key_use_floating_win = 0

" mappings
nnoremap <silent> <leader>      :WhichKey '<space>'<cr>
nnoremap <silent> <localleader> :silent! WhichKey ','<cr>


" others
silent! call which_key#register('<space>', 'g:which_key_map')
silent! call which_key#register(',', 'b:which_key_local_map')
