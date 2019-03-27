" functions
function! s:VisualStarSearch()
    let temp = @@
    norm! gvy
    let @/ = '\V' . substitute(escape(@@, '\'), '\_s\+', '\\_s\\+', 'g')
    call histadd('/', substitute(@/, '[?/]', '\="\\%d".char2nr(submatch(0))', 'g'))
    let @@ = temp
endfunction

" mappings
xnoremap * :<c-u>call <sid>VisualStarSearch()<cr>/<cr>
xnoremap # :<c-u>call <sid>VisualStarSearch()<cr>?<cr>
