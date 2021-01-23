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
let maplocalleader = " " 

" swap splits from horizontal to vertical etc
map <leader>h <C-w>t<C-w>H
map <leader>k <C-w>t<C-w>K

" edit nvim config 
map <Leader>v :e ~/.dotfiles/nvim/init.vim<CR>

" enable spell check (mnemomic: orthography )
map <leader>o :setlocal spell! spelllang=en_us<CR>

" double space to comment out a line 
map <leader><leader> :Commentary<CR>

" toggle NERDTree
let mapleader = " "
nnoremap <silent> <Leader>j :NERDTreeToggle<CR>

" floatterm bindings 
map <silent> <Leader><Return> :FloatermToggle<CR>
map <silent> <Leader><Return> :FloatermToggle<CR>
tnoremap <silent> <Leader><Leader> <C-\><C-n>:FloatermToggle<CR>
map <silent> <Leader><Return> :FloatermToggle<CR>
map <silent> <Leader>tp :FloatermNew python<CR>
map <silent> <Leader>tm :FloatermNew matlab<CR>
map <silent> <Leader>to :FloatermNew octave<CR>

" vimtex bindings
map <Leader>\ :VimtexCompile<CR>

" git fugitive bindings
map <leader>gh :diffget //3<CR>
map <leader>gu :diffget //2<CR>
map <leader>gs :G<CR>

" telescope bindings 
nnoremap <leader>f <cmd>Telescope find_files<cr>
