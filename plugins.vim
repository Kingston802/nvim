call plug#begin('~/.config/nvim/plugged')
" Language server 
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

" Tim Pope, I choose you 
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'

" General usability
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'

" Plug 'mbbill/undotree'
Plug 'voldikss/vim-floaterm'
Plug 'unblevable/quick-scope'       
Plug 'yggdroot/indentline'
Plug 'alvan/vim-closetag'
Plug 'vim-scripts/matchit.zip'

" Telescope requirements 
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

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

" LSP
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
}
EOF
" language server 
lua require'lspconfig'.pyls.setup{on_attach=require'completion'.on_attach}
lua require'lspconfig'.clangd.setup{on_attach=require'completion'.on_attach}
lua require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}

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

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c
