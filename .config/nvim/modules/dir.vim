" data
let g:which_key_map['d'] = {
            \ 'name': '+dir',
            \ '.': 'cd-file-dir',
            \ 'c': 'cd-vimconfig',
            \ 'h': 'cd-home',
            \ 'g': 'cd-git-root',
            \ 'o': 'open-dir',
            \ 'p': 'cd-pwd',
            \ 't': 'cd-term',
            \ }

" functions
function! s:CdPwd(count)
    :execute a:count . 'T cd ' . getcwd()
endfunction

function! s:CdTerm(count)
    :execute a:count . 'T nvr . -c "cd \%:p:h" -c "bd"'
endfunction

" mappings
nnoremap <silent> <leader>d. :cd %:p:h<cr>
nnoremap <silent> <leader>dc :cd $VIMCONFIG<cr>
nnoremap <silent> <leader>dh :cd ~<cr>
nnoremap <silent> <leader>dg :Gcd<cr>
nnoremap <silent> <leader>do :execute 'Dirvish ' . getcwd()<cr>
nnoremap <silent> <leader>dp :call <sid>CdPwd(v:count)<cr>
nnoremap <silent> <leader>dt :call <sid>CdTerm(v:count)<cr>
