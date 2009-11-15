To install the unix env, svn checkout this folder and create
symbolic links to the environment settings.

Quick install:
1. Move existing bin/.vimrc/.vim/.gvimrc/.bashrc/.alias files and folders to
a backup location

2. For linux run:

ln -s ~/env/vim/vimrc      ~/.vimrc
ln -s ~/env/vim/gvimrc     ~/.gvimrc 
ln -s ~/env/vim             ~/.vim 
ln -s ~/env/linux/.bashrc   ~/.bashrc 
ln -s ~/env/linux/.alias    ~/.alias 
ln -s ~/env/linux/bin       ~/bin

3. For windows, update ..\Vim\_vimrc, add:

source $VIMRUNTIME/../vimfiles/gvimrc
source $VIMRUNTIME/../vimfiles/vimrc

Make sure to svn checkout:
svn co https://serif.linuxsecured.net/svn/env/vim vimfiles

