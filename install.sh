#!/bin/bash
# Script to set up vim
curpath=`pwd`

mkdir -p .vim/bundle

ln -sv $curpath/.vim $HOME/.vim
ln -sv $curpath/.vimrc $HOME/.vimrc

cd ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git

echo "-------------------------------------------------"
echo "Now open vim and enter the command :PluginInstall"
