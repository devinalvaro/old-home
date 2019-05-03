" data
let b:which_key_local_map = {
            \ '=': 'neoformat',
            \ 'i': 'go-imports',
            \ 'r': 'go-rename',
            \ }

" mappings
nnoremap <buffer> <silent> <localleader>=  :Neoformat<cr>
nnoremap <buffer> <silent> <localleader>i  :GoImports<cr>
nnoremap <buffer> <silent> <localleader>r  :GoRename<cr>

xnoremap <buffer> <silent> <localleader>=  :Neoformat<cr>
