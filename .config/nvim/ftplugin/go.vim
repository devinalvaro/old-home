" options
let b:ale_linters = ['gopls']
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1

" mappings
nnoremap <silent> <localleader><localleader> :silent! WhichKey ','<cr>

nmap <buffer> =G <Plug>(coc-format)
nmap <buffer> K  <Plug>(coc-references)
nmap <buffer> gd <Plug>(coc-definition)

nnoremap <buffer> <silent> <localleader>a :GoAlternate<cr>
nmap     <buffer>          <localleader>r <Plug>(coc-rename)
nnoremap <buffer> <silent> <localleader>t :GoTestFunc<cr>
