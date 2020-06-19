let mapleader = " "
map <Leader>\ :VimtexCompile<CR>

let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'
let g:vimtex_compiler_progname = 'nvr'

autocmd VimLeave *.tex !texclear %<CR>
