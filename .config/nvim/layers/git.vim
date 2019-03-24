" options
let g:which_key_map['g'] = {
            \ 'name': '+git',
            \ 'f': 'list-git-files',
            \ 'p': 'preview-hunk',
            \ 's': 'stage-hunk',
            \ 'u': 'undo-hunk',
            \ }

" mappings
nnoremap <silent> <leader>gf :GFiles<cr>
nnoremap <silent> <leader>gp :GitGutterPreviewHunk<cr>
nnoremap <silent> <leader>gs :GitGutterStageHunk<cr>
nnoremap <silent> <leader>gu :GitGutterUndoHunk<cr>
