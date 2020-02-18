" data
let b:which_key_local_map = {
            \ 'r': 'rename',
            \ 't': 'test',
            \ }

" options
let b:ale_linters = ['gopls']

" mappings
nmap <buffer> =G <Plug>(coc-format)
nmap <buffer> K  <Plug>(coc-references)
nmap <buffer> gd <Plug>(coc-definition)

nmap     <buffer>          <localleader>r <Plug>(coc-rename)
nnoremap <buffer> <silent> <localleader>t :GoTestFunc<cr>
