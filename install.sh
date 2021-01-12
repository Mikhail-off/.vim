#!/bin/bash

clear

sudo apt-get install vim cmake python3-dev

cd ~/.vim/

echo "Setting .vimrc"
cp vimrc ~/.vimrc

echo "Installing plugin manager"
git submodule update --init --recursive
git pull --recurse-submodules

echo "Installing all plugins"
vim -c PluginInstall -c qall

echo "Installing YouCompleteMe"
./bundle/YouCompleteMe/install.py --clang-completer
