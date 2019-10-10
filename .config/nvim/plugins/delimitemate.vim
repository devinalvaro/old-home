" functions
function! s:DelimiteMateCR()
    return delimitMate#WithinEmptyPair() ? "\<plug>delimitMateCR" : (pumvisible() ? "\<c-y>\<cr>" : "\<cr>")
endfunction

" options
let g:delimitMate_balance_matchpairs = 1
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1
let g:delimitMate_matchpairs = "(:),[:],{:}"

" mappings
imap <expr> <cr> <sid>DelimiteMateCR()
