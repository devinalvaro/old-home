" options
if !executable('yarn')
    let g:coc_start_at_startup = 0
endif

let g:coc_global_extensions = [
            \ 'coc-json',
            \ 'coc-pyls',
            \ 'coc-rls',
            \ 'coc-yaml',
            \ ]
