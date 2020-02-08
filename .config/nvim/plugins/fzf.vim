" commands
command! -bang -nargs=? -complete=dir Files call fzf#vim#files(
            \ <q-args>,
            \ {'options': '--delimiter / --nth -1..'},
            \ <bang>0)

command! -bang -nargs=* Rg call fzf#vim#grep(
            \ "rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>),
            \ 1,
            \ {'options': '--delimiter : --nth 4..'},
            \ <bang>0)

" options
let g:fzf_history_dir = '~/.local/share/fzf/fzf_history'

" autocmds
augroup fzf
    autocmd!
    autocmd BufEnter * if &filetype ==# 'fzf' | startinsert | endif
    autocmd FileType fzf tnoremap <buffer> <esc> <c-g>
    autocmd FileType fzf tnoremap <buffer> <c-\><c-n> <c-\><c-n>
augroup END
