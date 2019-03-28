" data
let g:which_key_map['d'] = {
            \ 'name': '+dirs',
            \ '.': 'cd-file-dir',
            \ 'h': 'cd-home',
            \ 'g': 'cd-git-root',
            \ 'o': 'open-dir',
            \ 't': 'cd-term',
            \ }

" functions
function! s:CdTerm(count)
    if &buftype == 'terminal' && executable('nvr')
        :execute a:count . 'T nvr . -c "cd \%:p:h" -c "bd"'
    endif
endfunction

" mappings
nnoremap <silent> <leader>d. :cd %:p:h<cr>
nnoremap <silent> <leader>dh :cd ~<cr>
nnoremap <silent> <leader>dg :Gcd<cr>
nnoremap <silent> <leader>do :execute 'Dirvish ' . getcwd()<cr>
nnoremap <silent> <leader>dt :call <sid>CdTerm(v:count)<cr>
