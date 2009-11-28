This project is source controlled at GitHub: http://github.com/reshen/env

Public Clone URL: git://github.com/reshen/env.git

My Clone URL: git@github.com:reshen/env.git 


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

