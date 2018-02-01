" go
if executable('go-langserver')
    au User lsp_setup call lsp#register_server({
                \ 'name': 'go-langserver',
                \ 'cmd': { server_info->[ 'go-langserver', '-mode', 'stdio' ] },
                \ 'whitelist': [ 'go' ],
                \ })
endif

autocmd FileType go setlocal omnifunc=lsp#complete

" javascript/typescript
if executable('flow-language-server')
    au User lsp_setup call lsp#register_server({
                \ 'name': 'flow-language-server',
                \ 'cmd': {server_info->[&shell, &shellcmdflag, 'flow-language-server --stdio']},
                \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), '.flowconfig'))},
                \ 'whitelist': [ 'javascript', 'javascript.jsx' ],
                \ })
endif

if executable('typescript-language-server')
    au User lsp_setup call lsp#register_server({
                \ 'name': 'typescript-language-server',
                \ 'cmd': { server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
                \ 'root_uri': { server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_directory(lsp#utils#get_buffer_path(), '.git/..'))},
                \ 'whitelist': [ 'typescript' ]
                \ })
endif

autocmd FileType typescript, javascript, javascript.jsx setlocal omnifunc=lsp#complete

" python
if executable('pyls')
    au User lsp_setup call lsp#register_server({
                \ 'name': 'pyls',
                \ 'cmd': { server_info->[ 'pyls' ] },
                \ 'whitelist': [ 'python' ],
                \ })
endif

autocmd FileType python setlocal omnifunc=lsp#complete
