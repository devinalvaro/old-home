" go
if executable('go-langserver')
    au User lsp_setup call lsp#register_server({
                \ 'name': 'go-langserver',
                \ 'cmd': { server_info->[ 'go-langserver', '-mode', 'stdio' ] },
                \ 'whitelist': [ 'go' ],
                \ })
endif

" python
if executable('pyls')
    au User lsp_setup call lsp#register_server({
                \ 'name': 'pyls',
                \ 'cmd': { server_info->[ 'pyls' ] },
                \ 'whitelist': [ 'python' ],
                \ })
endif

autocmd FileType python setlocal omnifunc=lsp#complete
