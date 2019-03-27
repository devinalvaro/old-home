" functions
function! s:delimite_mate_cr()
    return delimitMate#WithinEmptyPair() ? "\<plug>delimitMateCR" : (pumvisible() ? "\<c-y>\<cr>" : "\<cr>")
endfunction

" options
let g:delimitMate_balance_matchpairs = 1
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1

" mappings
imap <expr> <cr> <sid>delimite_mate_cr()
