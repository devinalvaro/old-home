" data
let g:which_key_map['d'] = {
            \ 'name': '+dir',
            \ '.': 'cd-file-dir',
            \ '/': 'list-dirs',
            \ 'e': 'cd-dir',
            \ 'h': 'cd-home',
            \ 'o': 'open-dir',
            \ 'p': 'cd-project',
            \ 'u': 'cd-up',
            \ }

" commands
command! Dirs call fzf#run(fzf#wrap({
                \ 'source': empty($FZF_DIRECTORY_COMMAND) ? 'find * -type d' : $FZF_DIRECTORY_COMMAND,
                \ 'sink': 'cd',
                \ }))

" mappings
nnoremap <silent> <leader>d. :cd %:p:h<cr>
nnoremap <silent> <leader>d/ :Dirs<cr>
nnoremap          <leader>de :cd<space>
nnoremap <silent> <leader>dh :cd ~<cr>
nnoremap <silent> <leader>do :execute 'Dirvish ' . getcwd()<cr>
nnoremap <silent> <leader>dp :Gcd<cr>
nnoremap <silent> <leader>du :cd ..<cr>
