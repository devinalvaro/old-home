" options
let g:grepper = {}
let g:grepper.dir = 'filecwd'
let g:grepper.jump = 1
let g:grepper.prompt_quote = 2
let g:grepper.prompt_text = '$t> '
let g:grepper.searchreg = 1
let g:grepper.switch = 0
let g:grepper.tools = ['rg', 'git', 'grep']

" mappings
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)
