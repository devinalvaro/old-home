" data
let b:which_key_local_map = {
            \ '=': 'format',
            \ 'r': 'rename',
            \ }

" mappings
nmap <buffer> gd <Plug>(coc-definition)

nnoremap <buffer> <silent> <localleader>=  :Neoformat<cr>
nmap     <buffer>          <localleader>r  <Plug>(coc-rename)
