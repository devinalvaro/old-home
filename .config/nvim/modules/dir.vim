" commands
command! Dirs call fzf#run(fzf#wrap({
                \ 'source': empty($FZF_DIRECTORY_COMMAND) ? 'find * -type d' : $FZF_DIRECTORY_COMMAND,
                \ 'sink': 'cd',
                \ }))

" mappings
nnoremap <silent> \| :Dirs<cr>

nnoremap <silent> <leader>d. :cd %:p:h<cr>
nnoremap          <leader>de :cd<space>
nnoremap <silent> <leader>dg :Gcd<cr>
nnoremap <silent> <leader>dh :cd ~<cr>
nnoremap <silent> <leader>du :cd ..<cr>
