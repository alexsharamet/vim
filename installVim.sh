#!/bin/bash
cd ~
mkdir -p .vim/bundle
mkdir -p .vim/colors

cp environment/.vimrc .

cd ~/.vim/colors/
cp ~/environment/jellybeans.vim .

cd ~/.vim/bundle/
git clone https://github.com/VundleVim/Vundle.vim.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/vim-airline/vim-airline.git
git clone https://github.com/Shougo/neocomplcache.vim.git
git clone https://github.com/tomtom/tcomment_vim.git
git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/tpope/vim-fugitive.git
