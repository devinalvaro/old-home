" mappings
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)

nmap <buffer> <silent> gd <Plug>(coc-definition)
nmap <buffer> <silent> gr <Plug>(coc-rename)

nmap <buffer> =G <Plug>(coc-format)
nnoremap <buffer> <silent> K :call CocActionAsync('doHover')<CR>

" autocmds
augroup go
    autocmd!
    autocmd BufWritePre *.go :call CocAction('organizeImport') | call CocAction('format')
augroup END
