" data
let g:which_key_map = {}

let g:which_key_map.f = {
            \ 'name': '+fzf',
            \ 'b': {
                \ 'name': '+buffer',
                \ 'l': 'fzf-buffer-lines',
                \ 't': 'fzf-buffer-tags',
            \ },
            \ 'f': 'fzf-files',
            \ 'g': 'fzf-gfiles',
            \ 'h': {
                \ 'name': '+history',
                \ 'c': 'fzf-history-command',
                \ 'f': 'fzf-history-file',
                \ 's': 'fzf-history-search',
            \ },
            \ 'l': 'fzf-lines',
            \ 'r': 'fzf-rg',
            \ 't': 'fzf-tags',
            \ }

let g:which_key_map.t = {
            \ 'name': '+neoterm',
            \ 'c': 'neoterm-close',
            \ 'e': 'neoterm-exec',
            \ 'g': 'neoterm-toggle',
            \ 'k': 'neoterm-kill',
            \ 'l': 'neoterm-clear',
            \ 'n': 'neoterm-new',
            \ 'o': 'neoterm-open',
            \ 't': 'neoterm-t',
            \ }

call which_key#register('<space>', 'g:which_key_map')

" mappings
nnoremap <silent> <leader> :<c-u>WhichKey '<space>'<cr>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<space>'<cr>
