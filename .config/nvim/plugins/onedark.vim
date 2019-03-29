" data
let s:black = '#3b4252'
let s:red = '#e06c75'
let s:green = '#98c379'
let s:yellow = '#e5c07b'
let s:blue = '#61afef'
let s:magenta = '#c678dd'
let s:cyan = '#56b6c2'
let s:white = '#e5e9f0'
let s:comment_grey = '#7f848e'
let s:gutter_fg_grey = '#515a6b'
let s:special_grey = '#7f848e'
let s:vertsplit = '#515a6b'

" options
let g:onedark_color_overrides = {
            \ 'comment_grey': { 'gui': s:comment_grey, 'cterm': '59', 'cterm16': '15' },
            \ 'gutter_fg_grey': { 'gui': s:gutter_fg_grey, 'cterm': '238', 'cterm16': '15' },
            \ 'special_grey': { 'gui': s:special_grey, 'cterm': '238', 'cterm16': '15' },
            \ 'vertsplit': { 'gui': s:vertsplit, 'cterm': '59', 'cterm16': '15' },
            \ }

" autocmds
augroup one_dark
    autocmd!
    autocmd ColorScheme * call onedark#extend_highlight('Keyword', { 'fg': { 'gui': s:magenta }})
    autocmd ColorScheme * call onedark#extend_highlight('Operator', { 'fg': { 'gui': s:yellow } })
    autocmd ColorScheme * call onedark#extend_highlight('Special', { 'fg': { 'gui': s:red } })
augroup END

" others
colorscheme onedark
