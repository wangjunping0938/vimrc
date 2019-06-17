#! /bin/bash

set -e

cd ~/.Vimrc

echo 'set runtimepath+=~/.Vimrc

source ~/.Vimrc/vimrcs/basic.vim

try
    source ~/.Vimrc/vimrcs/plugins.vim
catch
endtry' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully!"
