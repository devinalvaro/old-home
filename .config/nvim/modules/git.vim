" abbrevs
cnoreabbrev G  Git
cnoreabbrev Gp Git --paginate

" variables
if executable('nvr')
    let $GIT_EDITOR = 'nvr --remote-wait-silent'
end

" mappings
nnoremap <silent> <leader>gc  :Commits<cr>
nnoremap <silent> <leader>gf  :GFiles<cr>

nnoremap <silent> <leader>gb  :Git blame<cr>
nnoremap <silent> <leader>gd  :Gdiffsplit<cr>
nnoremap          <leader>ge  :Gedit<space>
nnoremap          <leader>gg  :Ggrep<space>
nnoremap <silent> <leader>gl  :Gllog<cr>
nnoremap <silent> <leader>gr  :Gread<cr>
nnoremap <silent> <leader>gs  :Git<cr>
nnoremap <silent> <leader>gw  :Gwrite<cr>

" autocmds
augroup tab
    autocmd!
    autocmd BufReadPost fugitive://* set bufhidden=delete
augroup END
