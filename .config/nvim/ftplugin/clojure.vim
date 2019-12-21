" data
let b:which_key_local_map = {
            \ 'c': {
            \   'name': '+conjure',
            \   's': 'conjure-status',
            \   't': 'conjure-toggle',
            \   'u': 'conjure-up',
            \   },
            \ 'e': {
            \   'name': '+eval',
            \   'b': 'eval-buffer',
            \   'e': 'eval',
            \   'r': 'eval-root',
            \   },
            \ 't': 'test',
            \ }

" options
let b:ale_linters = ['clj-kondo']

" mappings
nnoremap <buffer> <silent> <localleader>cs :ConjureStatus<cr>
nnoremap <buffer> <silent> <localleader>ct :ConjureToggleLog<cr>
nnoremap <buffer> <silent> <localleader>cu :ConjureUp<cr>

nnoremap <buffer> <silent> <localleader>eb :ConjureEvalBuffer<cr>
nnoremap <buffer> <silent> <localleader>ee :ConjureEvalCurrentForm<cr>
nnoremap <buffer> <silent> <localleader>er :ConjureEvalRootForm<cr>
xnoremap <buffer> <silent> <localleader>ee :ConjureEvalSelection<cr>

nnoremap <buffer> <silent> <localleader>t  :ConjureRunTests<cr>
