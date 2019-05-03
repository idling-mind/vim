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
Give run access to `install.sh` file and run it.
```
chmod +x install.sh
./install.sh
```
Once it's done, open vim and run the following.
```
:PluginInstall
```
You're all set now.
