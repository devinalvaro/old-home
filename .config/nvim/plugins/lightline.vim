" functions
function! Dirname()
  if getcwd() == '/'
    return 'ROOT'
  elseif getcwd() == $HOME
    return 'HOME'
  else
    return toupper(fnamemodify(getcwd(), ':t'))
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
            \ 'component': {
            \   'lineinfo': '%3l:%-2v%<',
            \ },
            \ 'component_function': {
            \   'dirname': 'Dirname',
            \   'filepath': 'Filepath',
            \   'gitbranch': 'FugitiveHead',
            \ },
            \ 'active': {
            \   'left': [ [ 'dirname' ], [ 'filepath' ] ],
            \   'right': [ [ 'gitbranch', 'lineinfo' ] ],
            \ },
            \ 'inactive': {
            \   'left': [ [], [ 'dirname', 'filepath' ] ],
            \   'right': [ [ 'gitbranch', 'lineinfo' ] ],
            \ },
            \ }
