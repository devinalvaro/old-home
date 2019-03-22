" data
let g:which_key_map = {}

let g:which_key_map['<Tab>'] = 'last-buffer'

let g:which_key_map['b'] = {
            \ 'name': '+buffers',
            \ 'b': ['Buffers', 'list-buffers'],
            \ 'd': ['bdelete', 'delete-buffer'],
            \ }

let g:which_key_map['f'] = {
            \ 'name': '+files',
            \ 'f': ['Files', 'list-files'],
            \ 'r': ['edit', 'refresh-file'],
            \ 's': ['write', 'save-file'],
            \ }

let g:which_key_map['g'] = {
            \ 'name': '+git',
            \ 'f': ['GFiles', 'list-git-files'],
            \ 'p': ['GitGutterPreviewHunk', 'gitgutter-preview'],
            \ 's': ['GitGutterStageHunk', 'gitgutter-stage'],
            \ 'u': ['GitGutterUndoHunk', 'gitgutter-undo'],
            \ }

let g:which_key_map['q'] = {
            \ 'name': '+quit',
            \ 'q': ['quitall', 'quit-all'],
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
            \ 'H' : ['<C-W>5<', 'expand-window-left'],
            \ 'J' : ['resize +5', 'expand-window-below'],
            \ 'K' : ['resize -5', 'expand-window-up'],
            \ 'L' : ['<C-W>5>', 'expand-window-right'],
            \ '=' : ['<C-W>=', 'balance-window'],
            \ }

call which_key#register('<space>', 'g:which_key_map')

" mappings
nnoremap <silent> <leader> :<c-u>WhichKey '<space>'<cr>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<space>'<cr>
