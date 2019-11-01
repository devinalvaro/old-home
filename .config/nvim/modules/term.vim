" data
let g:which_key_map['t'] = {
            \ 'name': '+term',
            \ 'a': 'new-term-tab',
            \ 'n': 'new-term',
            \ 's': 'new-term-below',
            \ 't': 'list-buffers',
            \ 'v': 'new-term-right',
            \ }

" mappings
tnoremap <esc> <c-\><c-n>
tnoremap <c-\><c-n> <esc>

tnoremap <m-h> <c-\><c-n><c-w>h
tnoremap <m-j> <c-\><c-n><c-w>j
tnoremap <m-k> <c-\><c-n><c-w>k
tnoremap <m-l> <c-\><c-n><c-w>l

nnoremap <silent> <leader>ta :tab split \| terminal<cr>i
nnoremap <silent> <leader>tn :terminal<cr>i
nnoremap <silent> <leader>ts :split<cr>:terminal<cr>i
nnoremap <silent> <leader>tt :Buffers term://<cr>
nnoremap <silent> <leader>tv :vsplit<cr>:terminal<cr>i

" autocmds
augroup term
    autocmd BufEnter,TermOpen,WinEnter * if &buftype ==# 'terminal' | setlocal showmode | endif
    autocmd BufLeave,TermClose,WinLeave * if &buftype ==# 'terminal' | setlocal noshowmode | endif
augroup END
