" functions
function! Dirname()
  if getcwd() == '/'
    return '/'
  elseif getcwd() == $HOME
    return '~'
  else
    return fnamemodify(getcwd(), ':t')
  end
endfunction

function! Filepath()
  let filepath = expand('%:~:.')
  if filepath != ''
    return filepath
  else
    return '[No Name]'
  end
endfunction

" options
let g:lightline = {
            \ 'colorscheme': 'nord',
            \ 'component_function': {
            \   'dirname': 'Dirname',
            \   'filepath': 'Filepath',
            \ },
            \ 'active': {
            \   'left': [ [ 'dirname' ], [ 'filepath' ] ],
            \ },
            \ 'inactive': {
            \   'left': [ [], [ 'filepath' ] ],
            \ },
            \ 'tabline_separator': { 'left': '', 'right': '' },
            \ 'tabline_subseparator': { 'left': '', 'right': '' },
            \ }
