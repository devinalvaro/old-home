" ale
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:ale_linters = {
            \ 'c': [ 'gcc' ],
            \ 'cpp': [ 'g++' ],
            \ }

" buftabline
let g:buftabline_show = 1
let g:buftabline_indicators = 1

" closetag
let g:closetag_close_shortcut = '!>'

" commentary
autocmd Filetype c,cpp,php setlocal commentstring=//\ %s
autocmd Filetype sql setlocal commentstring=--\ %s

" delimitmate
let g:delimitMate_matchpairs = '(:),[:],{:}'
let g:delimitMate_expand_cr = 2
let g:delimitMate_expand_space = 1
let g:delimitMate_balance_matchpairs = 1

" dirvish
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1
command! -nargs=? -complete=dir Vexplore leftabove vsplit | silent Dirvish <args>
command! -nargs=? -complete=dir Sexplore belowright split | silent Dirvish <args>

" easy align
noremap gl <Plug>(EasyAlign)

" fzf
let g:fzf_history_dir = '~/.vim/fzf'

" gutentags
let g:gutentags_project_root = [ '.betags' ]
let g:gutentags_ctags_exclude = [ 'node_modules' ]

" grepper
runtime plugin/grepper.vim

silent! let g:grepper.jump = 1
silent! let g:grepper.switch = 0
silent! let g:grepper.dir = 'repo,cwd'
silent! let g:grepper.tools = [ 'rg', 'ag', 'ack', 'grep', 'git', 'findstr', 'pt', 'sift' ]

" lightline
function! LightlineFilename()
    let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
    let modified = &modified ? ' +' : ''

    return filename . modified
endfunction

function! LightlineAle()
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return printf(
            \ '✖ %d ⚠ %d',
            \ all_errors,
            \ all_non_errors
            \)
endfunction

function! LightlineGutentags()
    return gutentags#statusline('')
endfunction

let g:lightline = {
            \ 'colorscheme': 'One',
            \ 'active': {
            \   'left': [ [ 'mode' ],
            \             [ 'filename' ] ],
            \   'right': [ [ 'lineinfo' ],
            \              [ 'ale' ],
            \              [ 'gutentags' ] ]
            \ },
            \ 'inactive': {
            \   'left': [ [  ],
            \             [ 'filename' ] ],
            \   'right': [  ]
            \ },
            \ 'component_function': {
            \   'ale': 'LightlineAle',
            \   'filename': 'LightlineFilename',
            \   'gutentags': 'LightlineGutentags'
            \ }}

" matchit
runtime macros/matchit.vim

" ncm
let g:cm_refresh_length = [ [1, 4], [5, 2], [6, 3], [7, 2] ]

" neoformat
let g:neoformat_enabled_css = [ 'prettier', 'jsbeautify' ]
let g:neoformat_enabled_javascript = [ 'prettiereslint', 'prettier', 'jsbeautify' ]
let g:neoformat_enabled_json = [ 'prettier', 'jsbeautify' ]

" qf
let g:qf_window_bottom = 0
let g:qf_loclist_window_bottom = 0

" signify
let g:signify_vcs_list = [ 'git' ]
let g:signify_sign_change = '~'
let g:signify_sign_show_count = 0

" sneak
let g:sneak#label = 1

" tagbar
let g:tagbar_width = 30

" ultisnips
let g:UltiSnipsEditSplit = 'horizontal'
let g:UltiSnipsSnippetDirectories = [ 'snips' ]
let g:UltiSnipsJumpForwardTrigger = '<a-f>'
let g:UltiSnipsJumpBackwardTrigger = '<a-b>'

" undotree
let g:undotree_SetFocusWhenToggle = 1

" wordmotion
let g:wordmotion_spaces = '._-'
