call plug#begin('~/.config/nvim/plugged')
" Tim Pope, I choose you 
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'

" General usability
Plug 'scrooloose/nerdtree'
Plug 'voldikss/vim-floaterm'
Plug 'unblevable/quick-scope'       
Plug 'yggdroot/indentline'
Plug 'alvan/vim-closetag'
Plug 'vim-scripts/matchit.zip'

" Language specific 
Plug 'lervag/vimtex'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'maxbane/vim-asm_ca65'

" Decorative stuff
Plug 'mhinz/vim-startify'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" NERDTree 
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" floaterm
let g:floaterm_height = 0.9
let g:floaterm_width = 0.9
hi FloatermBorder guibg=0 guifg=0

" vimtex 
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


