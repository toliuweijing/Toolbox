#!/bin/sh
wget -O boost.tar.gz2 http://sourceforge.net/projects/boost/files/latest/download?source=files
tar -xf boost.tar.gz2 -C .
echo "boost installed"
cp ~/Dropbox/VIM/Makefile .
echo "Makefile ready"
rm -rf ~/.vim ~/.vimrc
ln -s ~/Dropbox/VIM/.vim ~/.vim
ln -s ~/Dropbox/VIM/.vimrc ~/.vimrc
echo "VIM setuped"
