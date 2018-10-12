augroup Plugins
    autocmd!

    " ale
    autocmd Filetype c,cpp let b:ale_linters = ['clang', 'gcc']

    " commentary
    autocmd Filetype c,cpp setlocal commentstring=//%s
    autocmd Filetype sql setlocal commentstring=--%s

    " ncm2
    autocmd BufEnter * call ncm2#enable_for_buffer()

    " onedark
    autocmd ColorScheme * call onedark#extend_highlight('Keyword', { 'fg': { 'gui': '#c678dd' }})
    autocmd ColorScheme * call onedark#extend_highlight('Operator', { 'fg': { 'gui': '#e5c07b' } })
    autocmd ColorScheme * call onedark#extend_highlight('Special', { 'fg': { 'gui': '#e06c75' } })
augroup END
