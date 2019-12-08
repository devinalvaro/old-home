" data
let b:which_key_local_map = {
            \ '=': 'format',
            \ 'r': 'rename',
            \ 't': 'test',
            \ }

" options
let b:ale_linters = ['gopls']

" mappings
nnoremap <buffer> <silent> <localleader>=  :GoImports<cr>
nnoremap <buffer> <silent> <localleader>r  :GoRename<cr>
nnoremap <buffer> <silent> <localleader>t  :GoTest<cr>
