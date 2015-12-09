# Vim
My vim files. Thought it would be a good idea to maintain a git instead of storing all my vim settings files in google drive. So here I am!
## Setup
```
git clone https://github.com/idling-mind/vim.git
```
If its a cygwin set up use the following command to create native symlinks
```
export CYGWIN="winsymlinks:native"
```
Now create symlinks to the .vim folder and .vimrc files
```
ln -sv vim/.vim ~/
ln -sv vim/.vimrc ~/
```
Download Vundle
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/
```
Install Plugins using Vundle PluginInstall
```
:PluginInstall
```
You're all set now.
