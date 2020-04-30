" functions
function! Float()
    let width = float2nr(&columns * 0.8)
    let height = float2nr(&lines * 0.6)
    let opts = {
                \ 'relative': 'editor',
                \ 'row': (&lines - height) / 2,
                \ 'col': (&columns - width) / 2,
                \ 'width': width,
                \ 'height': height,
                \ }

    call nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
endfunction

" commands
command! -bang -nargs=* Rg call fzf#vim#grep(
            \ "rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>),
            \ 1,
            \ {'options': '--delimiter : --nth 4..'},
            \ <bang>0)

" options
let g:fzf_history_dir = '~/.local/share/fzf/fzf_history'
let g:fzf_layout = { 'window': 'call Float()' }

" autocmds
augroup fzf
    autocmd!
    autocmd BufEnter * if &filetype ==# 'fzf' | startinsert | endif
    autocmd FileType fzf tnoremap <buffer> <esc> <c-g>
    autocmd FileType fzf tnoremap <buffer> <c-\><c-n> <c-\><c-n>
augroup END
