#!/bin/sh

# This little script sets up a sym link for .vimrc, initializes the vundle
# submodule, and installs the vundle bundles.
ln -s ~/.vim/.vimrc ~/.vimrc
cd ~/.vim
git submodule init
git submodule update
vim +BundleInstall +qall
