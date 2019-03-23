" options
let g:which_key_map = {}

let g:which_key_map['<Tab>'] = 'last-buffer'

let g:which_key_map['b'] = {
            \ 'name': '+buffers',
            \ 'b': 'list-buffers',
            \ 'd': ['bdelete', 'delete-buffer'],
            \ }

let g:which_key_map['f'] = {
            \ 'name': '+files',
            \ 'f': 'list-files',
            \ 'r': ['edit', 'refresh-file'],
            \ 's': ['write', 'save-file'],
            \ }

let g:which_key_map['g'] = {
            \ 'name': '+git',
            \ 'f': 'list-git-files',
            \ 'p': 'gitgutter-preview',
            \ 's': 'gitgutter-stage',
            \ 'u': 'gitgutter-undo',
            \ }

let g:which_key_map['m'] = {
            \ 'name': '+mode',
            \ '=': 'format-buffer',
            \ }

let g:which_key_map['q'] = {
            \ 'name': '+quit',
            \ 'q': ['quitall', 'quit-all'],
            \ }

let g:which_key_map['t'] = {
            \ 'name': '+term',
            \ 'c': 'neoterm-close',
            \ 'e': 'neoterm-exec',
            \ 'g': 'neoterm-toggle',
            \ 'k': 'neoterm-kill',
            \ 'l': 'neoterm-clear',
            \ 'n': 'neoterm-new',
            \ 'o': 'neoterm-open',
            \ 't': 'neoterm-t',
            \ }

let g:which_key_map['w'] = {
            \ 'name': '+windows',
            \ 'd' : ['<C-W>c', 'delete-window'],
            \ 'h' : ['<C-W>h', 'window-left'],
            \ 'j' : ['<C-W>j', 'window-below'],
            \ 'k' : ['<C-W>k', 'window-up'],
            \ 'l' : ['<C-W>l', 'window-right'],
            \ 'o' : ['<C-W>o', 'only-window'],
            \ 's' : ['<C-W>s', 'split-window-below'],
            \ 'v' : ['<C-W>v', 'split-window-right'],
            \ 'w' : ['<C-W>w', 'other-window'],
            \ '=' : ['<C-W>=', 'balance-window'],
            \ }

silent! call which_key#register('<space>', 'g:which_key_map')

" mappings
nnoremap <silent> <leader> :<c-u>WhichKey '<space>'<cr>
xnoremap <silent> <leader> :<c-u>WhichKeyVisual '<space>'<cr>
