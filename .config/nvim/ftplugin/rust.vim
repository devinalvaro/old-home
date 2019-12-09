" data
let b:which_key_local_map = {
            \ 'r': 'rename',
            \ 't': 'test',
            \ }

" options
let b:ale_linters = ['rls']
let b:rustfmt_autosave = 1
let b:rustfmt_fail_silently = 1

" mappings
nmap <buffer> gd <Plug>(coc-definition)

nmap     <buffer>          <localleader>r <Plug>(coc-rename)
nnoremap <buffer> <silent> <localleader>t :RustTest<cr>
