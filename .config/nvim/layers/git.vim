" options
let g:which_key_map['g'] = {
            \ 'name': '+git',
            \ 'f': 'list-git-files',
            \ 'p': 'gitgutter-preview',
            \ 's': 'gitgutter-stage',
            \ 'u': 'gitgutter-undo',
            \ }

" mappings
nnoremap <silent> <leader>gf :<c-u>GFiles<cr>
nnoremap <silent> <leader>gp :<c-u>GitGutterPreviewHunk<cr>
nnoremap <silent> <leader>gs :<c-u>GitGutterStageHunk<cr>
nnoremap <silent> <leader>gu :<c-u>GitGutterUndoHunk<cr>
