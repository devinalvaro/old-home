" data
let b:which_key_local_map = {
            \ '=': 'format',
            \ 'r': 'rename',
            \ }

" mappings
nmap <buffer> gd <Plug>(coc-definition)

nmap <buffer> <silent> <localleader>= <Plug>(coc-format)
nmap <buffer>          <localleader>r <Plug>(coc-rename)
