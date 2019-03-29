" data
let b:which_key_local_map = {
            \ '=': 'coc-format',
            \ 'f': 'coc-fix-current',
            \ 'i': 'coc-diagnostic-info',
            \ 'j': {
            \     'name': '+jump',
            \     'd': 'coc-declaration',
            \     'i': 'coc-implementation',
            \     'r': 'coc-references',
            \     't': 'coc-type-definition',
            \     },
            \ 'r': 'coc-rename',
            \ }

" mappings
nmap <buffer> g= <Plug>(coc-format-selected)
xmap <buffer> g= <Plug>(coc-format-selected)
nmap <buffer> gd <Plug>(coc-definition)

nmap <buffer> <localleader>=  <Plug>(coc-format)
nmap <buffer> <localleader>f  <Plug>(coc-fix-current)
nmap <buffer> <localleader>i  <Plug>(coc-diagnostic-info)
nmap <buffer> <localleader>jd <Plug>(coc-declaration)
nmap <buffer> <localleader>ji <Plug>(coc-implementation)
nmap <buffer> <localleader>jr <Plug>(coc-references)
nmap <buffer> <localleader>jt <Plug>(coc-type-definition)
nmap <buffer> <localleader>r  <Plug>(coc-rename)
