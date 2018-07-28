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

    " onedark
    autocmd ColorScheme * call onedark#extend_highlight("Keyword", { "fg": { "gui": "#c678dd" }})
    autocmd ColorScheme * call onedark#extend_highlight("Operator", { "fg": { "gui": "#e5c07b" } })
    autocmd ColorScheme * call onedark#extend_highlight("Special", { "fg": { "gui": "#e06c75" } })
augroup END
