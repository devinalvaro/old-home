" data
let g:which_key_map['t'] = {
            \ 'name': '+term',
            \ 'D': 'delete-all-term',
            \ 'd': 'delete-term',
            \ 'k': 'term-kill',
            \ 'l': 'term-clear',
            \ 'n': 'new-term',
            \ 'o': 'open-term',
            \ 'r': 'term-repl',
            \ 's': 'split-term',
            \ 't': 'term-t',
            \ 'v': 'vert-term',
            \ }

" mappings
tnoremap <esc> <c-\><c-n>
tnoremap <c-\><c-n> <esc>

tnoremap <m-h> <c-\><c-n><c-w>h
tnoremap <m-j> <c-\><c-n><c-w>j
tnoremap <m-k> <c-\><c-n><c-w>k
tnoremap <m-l> <c-\><c-n><c-w>l

nnoremap <silent> <leader>tD :TcloseAll!<cr>
nnoremap <silent> <leader>td :<c-u>execute v:count . 'Tclose!'<cr>
nnoremap <silent> <leader>tn :enew<cr>:Tnew<cr>i
nnoremap <silent> <leader>to :<c-u>execute v:count . 'Topen'<cr>
nnoremap <silent> <leader>tr :<c-u>execute v:count . 'TREPLSendLine'<cr>
nnoremap <silent> <leader>ts :belowright Tnew<cr>i
nnoremap <silent> <leader>tv :vertical Tnew<cr>i

xnoremap <silent> <leader>tr :<c-u>execute v:count . 'TREPLSendSelection'<cr>

" augroup
augroup term
    autocmd!
    autocmd VimEnter,BufEnter * if &buftype ==# 'terminal' | setlocal showmode | endif
    autocmd VimLeave,BufLeave * if &buftype ==# 'terminal' | setlocal noshowmode | endif
augroup END
