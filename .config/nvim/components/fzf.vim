" options
let g:fzf_buffers_jump = 1
let g:fzf_history_dir = $NVIM_FZF_HISTORY_DIR

" mappings
nnoremap g:    :Commands<cr>
nnoremap g<cr> :Commands<cr>
nnoremap gb    :Buffers<cr>

nnoremap <leader>fbl :BLines<cr>
nnoremap <leader>fbt :BTags<cr>
nnoremap <leader>ff  :Files<cr>
nnoremap <leader>fg  :GFiles<cr>
nnoremap <leader>fhc :History:<cr>
nnoremap <leader>fhf :History<cr>
nnoremap <leader>fhs :History/<cr>
nnoremap <leader>fl  :Lines<cr>
nnoremap <leader>fr  :Rg<cr>
nnoremap <leader>ft  :Tags<cr>
