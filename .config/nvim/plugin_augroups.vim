augroup Plugins
    autocmd!

    " ale
    autocmd Filetype c,cpp let b:ale_linters = ['clang', 'gcc']
    autocmd Filetype tex let b:ale_enabled = 0

    " commentary
    autocmd Filetype c,cpp setlocal commentstring=//%s
    autocmd Filetype sql setlocal commentstring=--%s

    " lsp
    if executable('pyls')
        au User lsp_setup call lsp#register_server({
                    \ 'name': 'pyls',
                    \ 'cmd': {server_info->['pyls']},
                    \ 'whitelist': ['python'],
                    \ })
    endif

    if executable('solargraph')
        au User lsp_setup call lsp#register_server({
                    \ 'name': 'solargraph',
                    \ 'cmd': {server_info->[&shell, &shellcmdflag, 'solargraph stdio']},
                    \ 'initialization_options': {"diagnostics": "true"},
                    \ 'whitelist': ['ruby'],
                    \ })
    endif

    " ncm2
    autocmd BufEnter * silent! call ncm2#enable_for_buffer()

    " onedark
    autocmd ColorScheme * call onedark#extend_highlight('Keyword', { 'fg': { 'gui': '#c678dd' }})
    autocmd ColorScheme * call onedark#extend_highlight('Operator', { 'fg': { 'gui': '#e5c07b' } })
    autocmd ColorScheme * call onedark#extend_highlight('Special', { 'fg': { 'gui': '#e06c75' } })
augroup END
