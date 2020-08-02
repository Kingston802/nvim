let mapleader = " "
let maplocalleader = " " 
map <Leader>\ :VimtexCompile<CR>

let g:vimtex_quickfix_ignore_filters = [
          \ 'You have requested package ',
          \]
let g:vimtex_quickfix_latexlog = {
            \ 'default' : 1,
            \ 'fix_paths' : 0,
            \ 'general' : 1,
            \ 'references' : 1,
            \ 'overfull' : 0,
            \ 'underfull' : 0,
            \ 'font' : 1,
            \ 'packages' : {
            \   'default' : 0,
            \   'natbib' : 1,
            \   'biblatex' : 1,
            \   'babel' : 1,
            \   'hyperref' : 1,
            \   'scrreprt' : 1,
            \   'fixltx2e' : 1,
            \   'titlesec' : 1,
            \   '../../template/NotesTeX' : 0,
            \ },
            \}
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'
let g:vimtex_compiler_progname = 'nvr'

autocmd VimLeave *.tex !texclear %<CR>
