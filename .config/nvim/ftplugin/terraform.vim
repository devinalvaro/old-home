" data
let b:which_key_local_map = {
            \ ',': 'terraform-run',
            \ '=': 'terraform-format',
            \ }

" mappings
nnoremap <buffer>          <localleader>, :Terraform<space>
nnoremap <buffer> <silent> <localleader>= :TerraformFmt<cr>
