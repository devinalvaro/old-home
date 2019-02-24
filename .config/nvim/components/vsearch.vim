" functions
function! s:visual_star_search()
    let temp = @@
    norm! gvy
    let @/ = '\V' . substitute(escape(@@, '\'), '\_s\+', '\\_s\\+', 'g')
    call histadd('/', substitute(@/, '[?/]', '\="\\%d".char2nr(submatch(0))', 'g'))
    let @@ = temp
endfunction

" mappings
vnoremap * :<C-u>call <SID>visual_star_search()<CR>/<CR>
vnoremap # :<C-u>call <SID>visual_star_search()<CR>?<CR>
