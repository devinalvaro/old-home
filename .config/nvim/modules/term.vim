" data
let g:which_key_map['t'] = {
            \ 'name': '+term',
            \ '/': 'list-buffers',
            \ 'a': 'new-term-tab',
            \ 'n': 'new-term',
            \ 's': 'new-term-below',
            \ 'v': 'new-term-right',
            \ }

" mappings
tnoremap <esc> <c-\><c-n>
tnoremap <c-\><c-n> <esc>

nnoremap <silent> <leader>t/ :Buffers term://<cr>
nnoremap <silent> <leader>ta :tab split \| terminal<cr>i
nnoremap <silent> <leader>tn :terminal<cr>i
nnoremap <silent> <leader>ts :split<cr>:terminal<cr>i
nnoremap <silent> <leader>tv :vsplit<cr>:terminal<cr>i

" autocmds
augroup term
    autocmd!
    autocmd BufEnter,TermOpen * if &buftype ==# 'terminal' | setlocal showmode | endif
    autocmd BufLeave,TermClose * if &buftype ==# 'terminal' | setlocal noshowmode | endif
augroup END
