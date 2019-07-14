" options
let g:fzf_buffers_jump = 1
let g:fzf_files_options = ['--delimiter', '/', '--nth', '-1,..']
let g:fzf_history_dir = '~/.local/share/fzf/fzf_history'

" mappings
if has('fzf')
    nnoremap <silent> : :Commands<cr>
endif

" autocmds
augroup fzf
    autocmd!
    autocmd BufEnter * if &filetype ==# 'fzf' | startinsert | endif
    autocmd FileType fzf
                \ tnoremap <buffer> <esc> <c-g> |
                \ tnoremap <buffer> <c-\><c-n> <c-\><c-n>
augroup END
