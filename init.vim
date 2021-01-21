" source plugins and plugin config 
source $HOME/.config/nvim/plugins.vim 

" source keybindings
source $HOME/.config/nvim/keys.vim

" set python instance 
let g:python3_host_prog = "/usr/bin/python3.9"

" tab settings
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent 

" colour settings
color nord  
" This is only necessary if you use 'set termguicolors'.
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:nord_underline = 1

augroup nord-theme-overrides
    autocmd!
    " Use 'nord10' as foreground color for Vim comments
    autocmd ColorScheme nord highlight vimComment ctermfg=13
augroup END

" set decent numbers 
set number relativenumber

" add a column for linting 
set signcolumn=yes

" add an 80 char column
set colorcolumn=80

" default is 4000ms
set updatetime=50

" I'm not sure that this even required but it was at some point useful
filetype plugin on
filetype indent on 
syntax enable 

" keeps buffers in the background 
set hidden

" turns off default bells 
set noerrorbells

" I don't like wrapping, I'm a rock guy
set nowrap 

" backups 
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

" search settings 
set ignorecase
set smartcase
set incsearch
let $FZF_DEFAULT_OPTS='--reverse'

" personal settings 
set scrolloff=8
set wildmenu
set fdm=manual "enable manual folds
set path+=** " searches subfolders
set fillchars=""
set encoding=UTF-8
set clipboard=unnamedplus " copypaste between vim and everything else
set showtabline=0 " never show tabline

" fix assembly code not being detected 
augroup filetypedetect
    au BufNewFile,BufRead *.s,*.inc set ft=asm_ca65
augroup END

" Disables automatic commenting on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Run texclear when leaving file
autocmd VimLeave *.tex !texclear %

" disable indent line for tex file 
autocmd FileType tex :let g:indentLine_enabled = 0

" Adds commenting for matlab files
autocmd FileType matlab setlocal commentstring=%\ %s

" VimBeGood 
let g:vim_be_good_floating = 0

" sane defaults for vim splits
set splitbelow splitright

