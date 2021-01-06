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

nmap <silent> <localleader>* <Plug>(coc-references)<cr>
nmap <silent> <localleader>f <Plug>(coc-fix-current)<cr>
nmap <silent> <localleader>i <Plug>(coc-implementation)<cr>
nmap <silent> <localleader>t <Plug>(coc-type-definition)<cr>

" autocmds
augroup rust
    autocmd!
    autocmd BufWritePre *.rs :call CocAction('format')
augroup END
