" options
let g:ale_echo_msg_format = '[%linter%] [%severity%] %s'
let g:ale_echo_msg_error_str = 'e'
let g:ale_echo_msg_warning_str = 'w'
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_text_changed = 'normal'
let g:ale_linters_explicit = 1

" mappings
nmap <silent> [d <Plug>(ale_previous_wrap)
nmap <silent> ]d <Plug>(ale_next_wrap)
