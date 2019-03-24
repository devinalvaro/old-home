" options
let g:which_key_map = {}

silent! call which_key#register('<space>', 'g:which_key_map')

" mappings
nnoremap <silent> <leader> :<c-u>WhichKey '<space>'<cr>
xnoremap <silent> <leader> :<c-u>WhichKeyVisual '<space>'<cr>
