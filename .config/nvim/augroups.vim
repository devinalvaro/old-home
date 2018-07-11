augroup Settings
    autocmd!

    " completion
    autocmd InsertLeave * if pumvisible() == 0 | pclose | endif
augroup END

augroup Plugins
    autocmd!

    " ale
    autocmd Filetype c,cpp let b:ale_enabled = 0

    " commentary
    autocmd Filetype c,cpp setlocal commentstring=//%s
    autocmd Filetype sql setlocal commentstring=--%s

    " curtineincsw
    autocmd Filetype c,cpp command! -bang A call CurtineIncSw()

    " go
    autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
augroup END

augroup Colors
    autocmd!

    " onedark
    let s:purple = { "gui": "#c678dd" }
    let s:yellow = { "gui": "#e5c07b" }
    let s:red    = { "gui": "#e06c75" }

    autocmd ColorScheme * call onedark#extend_highlight("Keyword", { "fg": s:purple })
    autocmd ColorScheme * call onedark#extend_highlight("Operator", { "fg": s:yellow })
    autocmd ColorScheme * call onedark#extend_highlight("Special", { "fg": s:red })
augroup END
