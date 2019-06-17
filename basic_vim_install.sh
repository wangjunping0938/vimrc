#! /bin/bash

set -e

cd ~/vimrc
cat ~/vimrc/vimrcs/basic.vim > ~/.vimrc
echo "Installed the Basic Vim configuration successfully!"
