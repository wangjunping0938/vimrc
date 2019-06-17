#! /bin/bash

set -e

#cd ~/vimrc

echo 'set runtimepath+=~/.vimrc

source ~/.vimrc/vimrcs/basic.vim

try
    source ~/.vimrc/vimrcs/plugins.vim
catch
endtry' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully!"
