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
# Use absolute paths as linux creates problems with relative paths in links at times
ln -sv /path/to/folder/vim/.vim /home/xxx/
ln -sv /path/to/folder/vim/.vimrc /home/xxx/
```
Download Vundle
```
cd ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git
```
Install Plugins using Vundle PluginInstall
```
:PluginInstall
```
You're all set now.
