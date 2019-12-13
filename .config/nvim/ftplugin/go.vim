" data
let b:which_key_local_map = {
            \ 'r': 'rename',
            \ 't': 'test',
            \ }

" options
let b:ale_linters = ['gopls']

" mappings
nnoremap <buffer> <silent> <localleader>r :GoRename<cr>
nnoremap <buffer> <silent> <localleader>t :GoTestFunc<cr>
