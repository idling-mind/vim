#!/bin/bash
# Script to set up vim
curpath=`pwd`
ln -sv $curpath/.vim $HOME/
ln -sv $curpath/.vimrc $HOME/

mkdir ~/.vim/bundle
cd ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git

echo "Now open vim and enter the command :PluginInstall"
