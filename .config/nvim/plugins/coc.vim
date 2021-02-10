" options
let g:coc_global_extensions = [
            \ 'coc-elixir',
            \ 'coc-go',
            \ 'coc-rust-analyzer',
            \ 'coc-tsserver',
            \ ]

" functions
function! CocMaps()
    xmap <buffer> ic <Plug>(coc-classobj-i)
    omap <buffer> ic <Plug>(coc-classobj-i)
    xmap <buffer> ac <Plug>(coc-classobj-a)
    omap <buffer> ac <Plug>(coc-classobj-a)
    xmap <buffer> if <Plug>(coc-funcobj-i)
    omap <buffer> if <Plug>(coc-funcobj-i)
    xmap <buffer> af <Plug>(coc-funcobj-a)
    omap <buffer> af <Plug>(coc-funcobj-a)

    nmap <buffer> gd <Plug>(coc-definition)
    nmap <buffer> gr <Plug>(coc-rename)

    nmap <buffer> =G <Plug>(coc-format)
    nnoremap <buffer> <silent> K :call CocActionAsync('doHover')<CR>

    nnoremap <buffer> <silent> <localleader>. :CocList outline<cr>
    nnoremap <buffer> <silent> <localleader>/ :CocList symbols<cr>
    nmap     <buffer>          <localleader>* <Plug>(coc-references)<cr>
    nmap     <buffer>          <localleader>f <Plug>(coc-fix-current)<cr>
    nmap     <buffer>          <localleader>i <Plug>(coc-implementation)<cr>
    nmap     <buffer>          <localleader>t <Plug>(coc-type-definition)<cr>
endfunction
