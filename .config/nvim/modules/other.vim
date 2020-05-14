" mappings
nmap              <leader>ol <Plug>(qf_loc_toggle)
nmap              <leader>oq <Plug>(qf_qf_toggle)
nnoremap <silent> <leader>os :StripWhitespace<cr>
nnoremap <silent> <leader>ou :UndotreeToggle<cr>

" autocmds
augroup other
    autocmd!
    autocmd FileType qf nnoremap <buffer> <cr> <cr>
augroup END

