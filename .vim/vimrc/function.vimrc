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

function! LightlineFilename()
    let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
    let modified = &modified ? ' +' : ''

    return filename . modified
endfunction

function! LightlineGutentags()
    return gutentags#statusline('')
endfunction
