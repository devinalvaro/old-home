" dirvish
command! -nargs=1 -complete=dir Vexplore leftabove vsplit | silent Dirvish <args>
command! -nargs=1 -complete=dir Sexplore belowright split | silent Dirvish <args>
