" data
let b:which_key_local_map = {
            \ '=': 'neoformat',
            \ 'd': {
            \   'name': '+diagnostic',
            \   'f': 'coc-fix-current',
            \   'i': 'coc-diagnostic-info',
            \   },
            \ 'j': {
            \   'name': '+jump',
            \   'd': 'coc-declaration',
            \   'i': 'coc-implementation',
            \   'r': 'coc-references',
            \   't': 'coc-type-definition',
            \   },
            \ 'r': 'coc-rename',
            \ }

" mappings
nmap <buffer> gd <Plug>(coc-definition)

nnoremap <buffer> <silent> <localleader>=  :Neoformat<cr>
nmap     <buffer>          <localleader>df <Plug>(coc-fix-current)
nmap     <buffer>          <localleader>di <Plug>(coc-diagnostic-info)
nmap     <buffer>          <localleader>jd <Plug>(coc-declaration)
nmap     <buffer>          <localleader>ji <Plug>(coc-implementation)
nmap     <buffer>          <localleader>jr <Plug>(coc-references)
nmap     <buffer>          <localleader>jt <Plug>(coc-type-definition)
nmap     <buffer>          <localleader>r  <Plug>(coc-rename)

xnoremap <buffer> <silent> <localleader>=  :Neoformat<cr>