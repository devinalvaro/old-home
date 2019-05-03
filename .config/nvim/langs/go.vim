" data
let b:which_key_local_map = {
            \ '=': 'neoformat',
            \ }

" options
let b:ale_linters = ['gofmt', 'golint', 'go vet']

" mappings
nnoremap <buffer> <silent> <localleader>=  :Neoformat<cr>

xnoremap <buffer> <silent> <localleader>=  :Neoformat<cr>
