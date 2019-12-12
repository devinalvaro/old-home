" data
let b:which_key_local_map = {
            \ 'r': 'rename',
            \ 't': 'test',
            \ }

" options
let b:ale_linters = ['gopls']

let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1

" mappings
nnoremap <buffer> <silent> <localleader>r :GoRename<cr>
nnoremap <buffer> <silent> <localleader>t :GoTest<cr>
