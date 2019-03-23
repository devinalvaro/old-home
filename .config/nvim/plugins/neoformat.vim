" mappings
nnoremap <leader>m= :Neoformat<cr>

" autocmds
augroup fmt
    autocmd!
    au BufWritePre * try | undojoin | Neoformat |
                \ catch /^Vim\%((\a\+)\)\=:E790/ |
                \ finally | silent Neoformat |
                \ endtry
augroup END
