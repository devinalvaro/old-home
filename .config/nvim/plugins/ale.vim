" options
let g:ale_echo_msg_format = '[%linter%] [%severity%] %s'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_text_changed = 'normal'

" mappings
nmap [d <Plug>(ale_previous_wrap)
nmap ]d <Plug>(ale_next_wrap)

" autocmds
augroup ale
    autocmd!
    autocmd ColorScheme * highlight ALEError guibg=none gui=underline
    autocmd ColorScheme * highlight ALEWarning guibg=none gui=underline
augroup END
