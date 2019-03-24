" options
let g:which_key_map['d'] = {
            \ 'name': '+dirs',
            \ '.': 'cd-file-dir',
            \ 'h': 'cd-home',
            \ 'p': 'cd-project-root',
            \ }

" mappings
nnoremap <silent> <leader>d. :cd %:p:h<cr>
nnoremap <silent> <leader>dh :cd ~<cr>
nnoremap <silent> <leader>dr :Rooter<cr>
