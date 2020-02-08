" data
let b:which_key_local_map = {
            \ 'r': 'rename',
            \ }

" mappings
nmap <buffer> =G <Plug>(coc-format)
nmap <buffer> gd <Plug>(coc-definition)

nmap <buffer> <localleader>r <Plug>(coc-rename)
