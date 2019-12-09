" data
let g:which_key_map['s'] = {
            \ 'name': '+search',
            \ '/': 'grepper-files',
            \ 'b': 'search-buffers',
            \ 'g': 'grep-files',
            \ 's': 'search-buffer',
            \ 't': 'search-tags',
            \ }

" commands
command! GitGrep call fzf#vim#grep(
                  \ 'git grep --line-number '.shellescape(<q-args>),
                  \ 0,
                  \ <bang>0
                  \ )

" mappings
nnoremap <silent> <leader>s/ :Grepper<cr>
nnoremap <silent> <leader>sb :Lines<cr>
nnoremap <silent> <leader>sg :GitGrep<cr>
nnoremap <silent> <leader>sr :Rg<cr>
nnoremap <silent> <leader>ss :BLines<cr>
nnoremap <silent> <leader>st :Tags<cr>
