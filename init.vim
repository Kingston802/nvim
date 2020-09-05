" source plugins
source $HOME/.config/nvim/plugins.vim 

" source config files
" left over from a past life 
" source $HOME/.config/nvim/plugin-config/coc.vim 
source $HOME/.config/nvim/plugin-config/nerdtree.vim 
source $HOME/.config/nvim/plugin-config/floaterm.vim
source $HOME/.config/nvim/plugin-config/vimtex.vim
source $HOME/.config/nvim/plugin-config/markdown.vim
source $HOME/.config/nvim/plugin-config/fugitive.vim
" source $HOME/.config/nvim/plugin-config/vimemmet.vim

" source keybindings
source $HOME/.config/nvim/keys.vim

" some basics
" color gruvbox 
" let g:gruvbox_contrast_dark = 'hard'
" let g:airline_theme='gruvbox'
" let g:gruvbox_invert_selection='0'
color nord
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
set number relativenumber
filetype plugin on
filetype indent on 
syntax enable 
set wildmenu
set hidden
set nowrap 
set fdm=manual "enable manual folds
set path+=** " searches subfolders
set fillchars=""
set encoding=UTF-8
set clipboard=unnamedplus " copypaste between vim and everything else
set showtabline=0 " never show tabline

" search settings 
set ignorecase
set smartcase
let $FZF_DEFAULT_OPTS='--reverse'

" Disables automatic commenting on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" " Run texclear when leaving file
autocmd VimLeave *.tex !texclear %

" disable indent line for tex file 
autocmd FileType tex :let g:indentLine_enabled = 0

" Adds commenting for matlab files
autocmd FileType matlab setlocal commentstring=%\ %s

" VimBeGood 
let g:vim_be_good_floating = 0

" sane defaults for vim splits
set splitbelow splitright

" tab settings
set smarttab
set expandtab
set autoindent
set tabstop=2 
set shiftwidth=2
