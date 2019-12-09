" data
let g:which_key_map['g'] = {
            \ 'name': '+git',
            \ 'b': 'git-blame',
            \ 'c': 'list-git-commits',
            \ 'd': 'git-diff',
            \ 'e': 'git-edit',
            \ 'f': 'list-git-files',
            \ 'g': 'git-command',
            \ 'l': 'git-log',
            \ 'm': {
            \   'name': '+merge',
            \   'f': 'git-fetch',
            \   'l': 'git-pull',
            \   'm': 'git-merge',
            \   'p': 'git-push',
            \   'r': 'git-rebase',
            \   },
            \ 'r': 'git-read',
            \ 's': 'git-status',
            \ }

let g:which_key_map['h'] = {
            \ 'name': '+hunk',
            \ 'p': 'preview-hunk',
            \ 's': 'stage-hunk',
            \ 'u': 'undo-hunk',
            \ }

" functions
function! s:GitLog()
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
nnoremap <silent> <leader>gl  :Gllog<cr>
nnoremap <silent> <leader>gr  :Gread<cr>
nnoremap <silent> <leader>gs  :vert Gstatus<cr>
nnoremap <silent> <leader>gmf :Gfetch<cr>
nnoremap <silent> <leader>gml :Gpull<cr>
nnoremap <silent> <leader>gmm :Gmerge<cr>
nnoremap <silent> <leader>gmp :Gpush<cr>
nnoremap <silent> <leader>gmr :Grebase<cr>
nnoremap <silent> <leader>hp  :GitGutterPreviewHunk<cr>
nnoremap <silent> <leader>hs  :GitGutterStageHunk<cr>
nnoremap <silent> <leader>hu  :GitGutterUndoHunk<cr>
