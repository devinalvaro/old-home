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
            \   'f': 'eval-file',
            \   'r': 'eval-root',
            \   'w': 'eval-word',
            \   },
            \ 't': 'test',
            \ }

" options
let b:ale_linters = ['clj-kondo']

let g:conjure_default_mappings = v:false
let g:conjure_log_blacklist = ["up", "eval", "ret", "ret-multiline", "load-file"]
let g:conjure_log_direction = "horizontal"

" mappings
nnoremap <buffer> <silent> <localleader>cs :ConjureStatus<cr>
nnoremap <buffer> <silent> <localleader>ct :ConjureToggleLog<cr>
nnoremap <buffer> <silent> <localleader>cu :ConjureUp<cr>

nnoremap <buffer> <silent> <localleader>eb :ConjureEvalBuffer<cr>
nnoremap <buffer> <silent> <localleader>ee :ConjureEvalCurrentForm<cr>
nnoremap <buffer> <silent> <localleader>ef :ConjureLoadFile<cr>
nnoremap <buffer> <silent> <localleader>er :ConjureEvalRootForm<cr>
nnoremap <buffer> <silent> <localleader>ew :ConjureEval<cr>
xnoremap <buffer> <silent> <localleader>ee :ConjureEvalSelection<cr>


nnoremap <buffer> <silent> <localleader>t  :ConjureRunTests<cr>
