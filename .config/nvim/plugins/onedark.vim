" options
let g:onedark_color_overrides = {
            \ 'comment_grey': { 'gui': '#7f848e', 'cterm': '59', 'cterm16': '15' },
            \ 'gutter_fg_grey': { 'gui': '#515a6b', 'cterm': '238', 'cterm16': '15' },
            \ 'special_grey': { 'gui': '#7f848e', 'cterm': '238', 'cterm16': '15' },
            \ 'vertsplit': { 'gui': '#515a6b', 'cterm': '59', 'cterm16': '15' },
            \ }

" autocmds
augroup OneDark
    autocmd!
    autocmd ColorScheme * call onedark#extend_highlight('Keyword', { 'fg': { 'gui': '#c678dd' }})
    autocmd ColorScheme * call onedark#extend_highlight('Operator', { 'fg': { 'gui': '#e5c07b' } })
    autocmd ColorScheme * call onedark#extend_highlight('Special', { 'fg': { 'gui': '#e06c75' } })
augroup END

silent! colorscheme onedark
