" options
set foldexpr=nvim_treesitter#foldexpr()
set foldmethod=expr

" script
lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  }
}
EOF
