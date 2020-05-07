" variables
if executable('nvr')
    let $GIT_EDITOR = 'nvr --remote-wait-silent'
end

" functions
function! s:GitLog()
    let s:range = a:firstline != a:lastline ?
                \ join([a:firstline, a:lastline], ',') : ''

    :execute 'silent ' . s:range . 'Gllog'
    :lopen
    :wincmd p
endfunction

" mappings
nnoremap <silent> <leader>gb  :Gblame<cr>
nnoremap <silent> <leader>gc  :Commits<cr>
nnoremap <silent> <leader>gd  :Gdiff<cr>
nnoremap <silent> <leader>ge  :Gedit<cr>
nnoremap <silent> <leader>gf  :GFiles<cr>
nnoremap <silent> <leader>gg  :Git<space>
nnoremap <silent> <leader>gl  :Gllog<cr>
nnoremap <silent> <leader>gr  :Gread<cr>
nnoremap <silent> <leader>gs  :vert Gstatus<cr>
nnoremap <silent> <leader>gmf :Gfetch<cr>
nnoremap <silent> <leader>gml :Gpull<cr>
nnoremap <silent> <leader>gmm :Gmerge<cr>
nnoremap <silent> <leader>gmp :Gpush<cr>
nnoremap <silent> <leader>gmr :Grebase<cr>
