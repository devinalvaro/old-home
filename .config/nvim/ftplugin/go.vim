" mappings
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)

nmap <buffer> gd <Plug>(coc-definition)
nmap <buffer> gr <Plug>(coc-rename)

nmap <buffer> =G <Plug>(coc-format)
nnoremap <buffer> <silent> K :call CocActionAsync('doHover')<CR>

nnoremap <silent> <localleader>. :CocList outline<cr>
nnoremap <silent> <localleader>/ :CocList symbols<cr>
nmap              <localleader>* <Plug>(coc-references)<cr>
nmap              <localleader>f <Plug>(coc-fix-current)<cr>
nmap              <localleader>i <Plug>(coc-implementation)<cr>
nmap              <localleader>t <Plug>(coc-type-definition)<cr>

" autocmds
augroup go
    autocmd!
    autocmd BufWritePre *.go :call CocAction('organizeImport') | call CocAction('format')
augroup END
