" data
let b:which_key_local_map = {
            \ 'b': {
            \   'name': '+browsing',
            \   },
            \ 'e': {
            \   'name': '+eval',
            \   },
            \ 'h': {
            \   'name': '+help',
            \   },
            \ 'j': {
            \   'name': '+jumping',
            \   },
            \ 'r': {
            \   'name': '+refactoring',
            \   },
            \ 's': {
            \   'name': '+stdout',
            \   },
            \ 't': {
            \   'name': '+testing',
            \   },
            \ }

" options
let b:ale_linters = ['clj-kondo']

" mappings
nmap <buffer> == <Plug>(iced_format)
nmap <buffer> =G <Plug>(iced_format_all)
nmap <buffer> K  <Plug>(iced_document_popup_open)
nmap <buffer> gd <Plug>(iced_def_jump)

nmap <buffer> <localleader>'   <Plug>(iced_connect)
nmap <buffer> <localleader>"   <Plug>(iced_jack_in)

nmap <buffer> <localleader>*   <Plug>(iced_grep)
nmap <buffer> <localleader>/   :<C-u>IcedGrep<Space>

nmap <buffer> <localleader>bn  <Plug>(iced_browse_related_namespace)
nmap <buffer> <localleader>bs  <Plug>(iced_browse_spec)
nmap <buffer> <localleader>bt  <Plug>(iced_browse_test_under_cursor)
nmap <buffer> <localleader>br  <Plug>(iced_browse_references)
nmap <buffer> <localleader>bd  <Plug>(iced_browse_dependencies)

nmap <buffer> <localleader>ei  <Plug>(iced_eval)<Plug>(sexp_inner_element)``
nmap <buffer> <localleader>ee  <Plug>(iced_eval)<Plug>(sexp_outer_list)``
nmap <buffer> <localleader>et  <Plug>(iced_eval_outer_top_list)
nmap <buffer> <localleader>en  <Plug>(iced_eval_ns)
xmap <buffer> <localleader>ee  <Plug>(iced_eval_visual)
nmap <buffer> <localleader>ep  <Plug>(iced_print_last)
nmap <buffer> <localleader>eb  <Plug>(iced_require)
nmap <buffer> <localleader>eB  <Plug>(iced_require_all)
nmap <buffer> <localleader>eu  <Plug>(iced_undef)
nmap <buffer> <localleader>eU  <Plug>(iced_undef_all_in_ns)
nmap <buffer> <localleader>eq  <Plug>(iced_interrupt)
nmap <buffer> <localleader>eQ  <Plug>(iced_interrupt_all)
nmap <buffer> <localleader>em  <Plug>(iced_macroexpand_1_outer_list)
nmap <buffer> <localleader>eM  <Plug>(iced_macroexpand_outer_list)

nmap <buffer> <localleader>hb  <Plug>(iced_document_open)
nmap <buffer> <localleader>hu  <Plug>(iced_use_case_open)
nmap <buffer> <localleader>hn  <Plug>(iced_next_use_case)
nmap <buffer> <localleader>hN  <Plug>(iced_prev_use_case)
nmap <buffer> <localleader>hq  <Plug>(iced_document_close)
nmap <buffer> <localleader>hs  <Plug>(iced_source_popup_show)
nmap <buffer> <localleader>hS  <Plug>(iced_source_show)
nmap <buffer> <localleader>hc  <Plug>(iced_clojuredocs_open)
nmap <buffer> <localleader>hh  <Plug>(iced_command_palette)

nmap <buffer> <localleader>jn  <Plug>(iced_jump_to_next_sign)
nmap <buffer> <localleader>jN  <Plug>(iced_jump_to_prev_sign)
nmap <buffer> <localleader>jl  <Plug>(iced_jump_to_let)

nmap <buffer> <localleader>rcn <Plug>(iced_clean_ns)
nmap <buffer> <localleader>rca <Plug>(iced_clean_all)
nmap <buffer> <localleader>raa <Plug>(iced_add_arity)
nmap <buffer> <localleader>ram <Plug>(iced_add_missing)
nmap <buffer> <localleader>ran <Plug>(iced_add_ns)
nmap <buffer> <localleader>rtf <Plug>(iced_thread_first)
nmap <buffer> <localleader>rtl <Plug>(iced_thread_last)
nmap <buffer> <localleader>ref <Plug>(iced_extract_function)
nmap <buffer> <localleader>rml <Plug>(iced_move_to_let)

nmap <buffer> <localleader>ss  <Plug>(iced_stdout_buffer_open)
nmap <buffer> <localleader>sl  <Plug>(iced_stdout_buffer_clear)
nmap <buffer> <localleader>sq  <Plug>(iced_stdout_buffer_close)

nmap <buffer> <localleader>tt  <Plug>(iced_test_under_cursor)
nmap <buffer> <localleader>tl  <Plug>(iced_test_rerun_last)
nmap <buffer> <localleader>ts  <Plug>(iced_test_spec_check)
nmap <buffer> <localleader>to  <Plug>(iced_test_buffer_open)
nmap <buffer> <localleader>tn  <Plug>(iced_test_ns)
nmap <buffer> <localleader>tp  <Plug>(iced_test_all)
nmap <buffer> <localleader>tr  <Plug>(iced_test_redo)
