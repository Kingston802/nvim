call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'voldikss/vim-floaterm'
Plug 'unblevable/quick-scope'       
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'yggdroot/indentline'
Plug 'lervag/vimtex'
Plug 'jvirtanen/vim-octave'
Plug 'pangloss/vim-javascript'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'vim-scripts/matchit.zip'
Plug 'mhinz/vim-startify'
Plug 'maxbane/vim-asm_ca65'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'alvan/vim-closetag'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'
Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
call plug#end()
