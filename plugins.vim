call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdtree'
Plug 'voldikss/vim-floaterm'
Plug 'unblevable/quick-scope'       
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'ap/vim-css-color'
Plug 'lervag/vimtex'
Plug 'jvirtanen/vim-octave'
Plug 'pangloss/vim-javascript'
Plug 'vim-scripts/matchit.zip'
Plug 'mhinz/vim-startify'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'alvan/vim-closetag'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'
Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
call plug#end()
