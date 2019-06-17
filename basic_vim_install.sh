#! /bin/bash

set -e

cd ~/.Vimrc
cat ~/.Vimrc/vimrcs/basic.vim > ~/.vimrc

echo "Installed the Basic Vim configuration successfully!"
