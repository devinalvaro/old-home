" functions
function! s:visual_star_search()
    let temp = @@
    norm! gvy
    let @/ = '\V' . substitute(escape(@@, '\'), '\_s\+', '\\_s\\+', 'g')
    call histadd('/', substitute(@/, '[?/]', '\="\\%d".char2nr(submatch(0))', 'g'))
    let @@ = temp
endfunction

" mappings
vnoremap * :<c-u>call <sid>visual_star_search()<cr>/<cr>
vnoremap # :<c-u>call <sid>visual_star_search()<cr>?<cr>
