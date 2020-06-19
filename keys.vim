let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

inoremap jj <ESC>

" w!! will give sudo power 
cmap w!! w !sudo tee % 

" move text and maintain formatting, stolen from theprimeagen
vnoremap J :m '>+1<CR>gv=gv 
vnoremap K :m '<-2<CR>gv=gv

" change splits easier
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" leader commands
let mapleader = " "

" swap splits from horizontal to vertical etc
map <leader>h <C-w>t<C-w>H
map <leader>k <C-w>t<C-w>K

map <Leader>p :!compiler %<CR>
map <Leader>v :e ~/.config/nvim/init.vim<CR>
map <leader>o :setlocal spell! spelllang=en_us<CR>
map <leader><leader> :Commentary<CR>
