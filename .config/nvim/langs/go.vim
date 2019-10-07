" data
let b:which_key_local_map = {
            \ '=': 'neoformat',
            \ 'i': 'go-imports',
            \ 'r': 'go-rename',
            \ }

" options
let b:ale_linters = ['gopls']

" mappings
nnoremap <buffer> <silent> <localleader>=  :Neoformat<cr>
nnoremap <buffer> <silent> <localleader>i  :GoImports<cr>
nnoremap <buffer> <silent> <localleader>r  :GoRename<cr>

xnoremap <buffer> <silent> <localleader>=  :Neoformat<cr>

" autocmds
augroup go
    autocmd!
    autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')
augroup END
