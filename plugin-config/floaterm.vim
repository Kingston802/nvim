let mapleader = " "
let g:floaterm_height = 0.9
let g:floaterm_width = 0.9

map <silent> <Leader><Return> :FloatermToggle<CR>
map <silent> <Leader><Return> :FloatermToggle<CR>
tnoremap <silent> <Leader><Leader> <C-\><C-n>:FloatermToggle<CR>
map <silent> <Leader><Return> :FloatermToggle<CR>
map <silent> <Leader>tp :FloatermNew python<CR>
map <silent> <Leader>tm :FloatermNew matlab<CR>
map <silent> <Leader>to :FloatermNew octave<CR>

map <silent> <Leader>f :FloatermNew fzf<CR>

