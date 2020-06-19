# myneovim 

## neovim itself
install from the latest release [here](https://github.com/neovim/neovim/releases)

make a 'nvim' directory in .config if it is not created automatically then put everything in there

## vimplug for neovim
vimplug is [here](https://github.com/junegunn/vim-plug)
or just run this 
```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
then open nvim and run :PlugInstall

## install firacode fonts and some other stuff 
fira is [here](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode)

## things you should install to get your vim healthy
```bash
pip install pynvim
npm i -g neovim
pip install neovim-remote
```
you may need to add `~/.local/bin` to your path

## install clipboard support 
```bash
sudo pacman -S xsel
```
or whatever package manager you use
