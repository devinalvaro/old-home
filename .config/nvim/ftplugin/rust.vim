" data
let b:which_key_local_map = {
            \ '=': 'format',
            \ 'r': 'rename',
            \ 't': 'test',
            \ }

" options
let b:ale_linters = ['rls']

" mappings
nmap <buffer> gd <Plug>(coc-definition)

nnoremap <buffer> <silent> <localleader>=  :RustFmt<cr>
nmap     <buffer>          <localleader>r  <Plug>(coc-rename)
nnoremap <buffer> <silent> <localleader>t  :RustTest<cr>
