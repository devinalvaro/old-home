" data
let g:which_key_map['d'] = {
            \ 'name': '+dir',
            \ '.': 'cd-file-dir',
            \ 'c': 'cd-vimconfig',
            \ 'd': 'list-dirs',
            \ 'h': 'cd-home',
            \ 'g': 'cd-git-root',
            \ 'o': 'open-dir',
            \ 'p': 'cd-pwd',
            \ }

" functions
function! s:CdPwd(count)
    :execute a:count . 'T cd ' . getcwd()
endfunction

" commands
command! Dirs call fzf#run(fzf#wrap({
                \ 'source': empty($FZF_ALT_C_COMMAND) ? 'find * -type d' : $FZF_ALT_C_COMMAND,
                \ 'sink': 'cd',
                \ }))

" mappings
nnoremap <silent> <leader>d. :cd %:p:h<cr>
nnoremap <silent> <leader>dc :cd $VIMCONFIG<cr>
nnoremap <silent> <leader>dd :Dirs<cr>
nnoremap <silent> <leader>dh :cd ~<cr>
nnoremap <silent> <leader>dg :Gcd<cr>
nnoremap <silent> <leader>do :execute 'Dirvish ' . getcwd()<cr>
nnoremap <silent> <leader>dp :call <sid>CdPwd(v:count)<cr>
