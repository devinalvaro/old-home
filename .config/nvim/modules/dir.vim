" data
let g:which_key_map['d'] = {
            \ 'name': '+dir',
            \ '.': 'cd-file-dir',
            \ 'c': 'cd',
            \ 'd': 'list-dirs',
            \ 'h': 'cd-home',
            \ 'g': 'cd-git-root',
            \ 'o': 'open-dir',
            \ 'p': 'cd-pwd',
            \ 'u': 'cd-up',
            \ 'v': 'cd-vimconfig',
            \ }

" commands
command! Dirs call fzf#run(fzf#wrap({
                \ 'source': empty($FZF_DIRECTORY_COMMAND) ? 'find * -type d' : $FZF_DIRECTORY_COMMAND,
                \ 'sink': 'cd',
                \ }))

" mappings
nnoremap <silent> <leader>d. :cd %:p:h<cr>
nnoremap          <leader>dc :cd<space>
nnoremap <silent> <leader>dd :Dirs<cr>
nnoremap <silent> <leader>dh :cd ~<cr>
nnoremap <silent> <leader>dg :Gcd<cr>
nnoremap <silent> <leader>do :execute 'Dirvish ' . getcwd()<cr>
nnoremap <silent> <leader>dp :let @" = 'cd ' . getcwd()<cr>
nnoremap <silent> <leader>du :cd ..<cr>
nnoremap <silent> <leader>dv :cd $VIMCONFIG<cr>
