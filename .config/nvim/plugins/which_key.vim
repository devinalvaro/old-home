" data
let g:which_key_map = {}
let g:which_key_local_map = {}

" mappings
nnoremap <silent> <leader> :<c-u>WhichKey '<space>'<cr>
xnoremap <silent> <leader> :<c-u>WhichKeyVisual '<space>'<cr>

nnoremap <silent> <localleader> :<c-u>WhichKey ','<CR>
xnoremap <silent> <localleader> :<c-u>WhichKeyVisual ','<CR>

" others
silent! call which_key#register('<space>', 'g:which_key_map')
silent! call which_key#register(',', 'g:which_key_local_map')
