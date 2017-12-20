" lightline
function! LightlineFilename()
    let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
    let modified = &modified ? ' +' : ''

    return filename . modified
endfunction

function! LightlineGutentags()
    return gutentags#statusline('')
endfunction
