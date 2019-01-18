augroup Plugins
    autocmd!

    " ale
    autocmd Filetype c,cpp let b:ale_linters = ['clang']
    autocmd Filetype python let b:ale_linters = ['flake8']
    autocmd Filetype tex let b:ale_enabled = 0

    " commentary
    autocmd Filetype c,cpp setlocal commentstring=//%s
    autocmd Filetype sql setlocal commentstring=--%s

    " lsp
    if executable('clangd')
        au User lsp_setup call lsp#register_server({
                    \ 'name': 'clangd',
                    \ 'cmd': {server_info->['clangd']},
                    \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp'],
                    \ })
    endif

    if executable('flow')
        au User lsp_setup call lsp#register_server({
                    \ 'name': 'flow',
                    \ 'cmd': {server_info->['flow', 'lsp']},
                    \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), '.flowconfig'))},
                    \ 'whitelist': ['javascript', 'javascript.jsx'],
                    \ })
    endif

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
