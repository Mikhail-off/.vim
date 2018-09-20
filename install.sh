#!/bin/bash

clear

echo "Setting .vimrc"
cp vimrc ~/.vimrc

echo "Installing plugin manager"
git submodule update --init --recursive
git pull --recurse-submodules

echo "Installing all plugins"
vim -c PluginInstall -c q -c q

echo "Installing YouCompleteMe"
./bundle/YouCompleteMe/install.sh --all
