#!/bin/bash

#cd ~/
#git clone --recursive https://github.com/szukalski/.vim .vim
ln -sf $HOME/.vim/.vimrc $HOME/.vimrc
cd $HOME/.vim
git submodule update --init

exit 0
