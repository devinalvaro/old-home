" data
let g:which_key_map['g'] = {
            \ 'name': '+git',
            \ 'b': 'git-blame',
            \ 'c': 'list-git-commits',
            \ 'd': 'git-diff',
            \ 'e': 'git-edit',
            \ 'f': 'list-git-files',
            \ 'g': 'git-command',
            \ 'h': {
            \     'name': '+hunks',
            \     'p': 'preview-hunk',
            \     's': 'stage-hunk',
            \     'u': 'undo-hunk',
            \     },
            \ 'l': 'git-log',
            \ 'r': 'git-read',
            \ 's': 'git-status',
            \ }

" functions
function! s:git_llog()
    let s:range = a:firstline != a:lastline ?
                \ join([a:firstline, a:lastline], ',') : ''

    :execute 'silent ' . s:range . 'Gllog'
    :lopen
    :wincmd p
endfunction

" mappings
nnoremap <silent> <leader>gb  :Gblame<cr>
nnoremap <silent> <leader>gc  :Commits<cr>
nnoremap <silent> <leader>gd  :Gdiff<cr>
nnoremap <silent> <leader>ge  :Gedit<cr>
nnoremap <silent> <leader>gf  :GFiles<cr>
nnoremap <silent> <leader>gg  :Git<space>
nnoremap <silent> <leader>ghp :GitGutterPreviewHunk<cr>
nnoremap <silent> <leader>ghs :GitGutterStageHunk<cr>
nnoremap <silent> <leader>ghu :GitGutterUndoHunk<cr>
nnoremap <silent> <leader>gl  :call <sid>git_llog()<cr>
nnoremap <silent> <leader>gr  :Gread<cr>
nnoremap <silent> <leader>gs  :vert Gstatus<cr>

xnoremap <silent> <leader>gl  :call <sid>git_llog()<cr>
xnoremap <silent> <leader>gr  :Gread<cr>
