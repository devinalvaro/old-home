" buffer
autocmd VimResized * wincmd =

" completion
autocmd InsertLeave * if pumvisible() == 0 | pclose | endif

" commentary
autocmd Filetype c,cpp,cs,php setlocal commentstring=//\ %s
autocmd Filetype sql setlocal commentstring=--\ %s

" delimitmate
autocmd Filetype clojure,lisp,racket,scheme let g:delimitMate_expand_cr = 1

" lightline
autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()
