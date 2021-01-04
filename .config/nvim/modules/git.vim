" functions
function! Status()
    if &buftype ==# 'terminal'
        split .git/index
    else
        Git
    endif
endfunction


" abbrevs
cnoreabbrev G  Git

" mappings
nnoremap <silent> gs :call Status()<cr>

nnoremap <silent> <leader>g/  :Commits<cr>
nnoremap <silent> <leader>gb  :Git blame<cr>
nnoremap <silent> <leader>gd  :Git difftool<cr>
nnoremap          <leader>ge  :Gedit<space>
nnoremap <silent> <leader>gl  :Git log<cr>
nnoremap <silent> <leader>gm  :Git mergetool<cr>
nnoremap          <leader>gp  :Git push<space>
nnoremap          <leader>gr  :Gread<space>
nnoremap          <leader>gs  :Gsplit<space>
nnoremap          <leader>gv  :Gvsplit<space>
nnoremap          <leader>gw  :Gwrite<space>
