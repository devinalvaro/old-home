" delimitmate + deoplete
imap <expr> <cr> <sid>magic_cr()

function! s:magic_cr()
    return delimitMate#WithinEmptyPair() ? "\<plug>delimitMateCR" : (pumvisible() ? "\<c-y>\<cr>" : "\<cr>")
endfunction

" fzf
imap     <c-x><c-f> <plug>(fzf-complete-path)
nnoremap gb :Buffers<cr>

" grepper
map      gs <plug>(GrepperOperator)

" leader
nnoremap <leader>c  :ColorToggle<cr>
nnoremap <leader>n  :Neoformat<cr>
nnoremap <leader>s  :StripWhitespace<cr>
nnoremap <leader>u  :UndotreeToggle<cr>

nnoremap <leader>fg :GFiles<cr>
nnoremap <leader>fi :Files<cr>
nnoremap <leader>fl :Lines<cr>
nnoremap <leader>ft :Tags<cr>

nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>ge :Gedit<cr>
nnoremap <leader>gg :Git<space>
nnoremap <leader>gl :silent! Gllog<cr>
nnoremap <leader>gm :Gmerge<cr>
nnoremap <leader>gr :Gread<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gw :Gwrite<cr>

if executable('pyls')
    nnoremap <leader>rg :GrepperRg<space>
else
    nnoremap <leader>rg :GrepperGrep<space>
endif

nnoremap <leader>tb :GutentagsUpdate<cr>
nnoremap <leader>tu :GutentagsUpdate!<cr>
