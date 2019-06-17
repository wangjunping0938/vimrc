" => Vundle.vim插件管理器必须的设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 关闭vi兼容模式
set nocompatible
" 关闭文件类型检测
"filetype off
" 开启插件文件类型检测
filetype plugin on
" 开启插件自动缩进
filetype indent on


" => 插件管理
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 指定插件存放路径
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
" 使用插件管理器管理插件管理器本身
Plugin 'VundleVim/Vundle.vim'
" 目录树插件
Plugin 'scrooloose/nerdtree'
" 目录树支持git信号标识
Plugin 'Xuyuanp/nerdtree-git-plugin'
" 目录树支持标签
Plugin 'jistr/vim-nerdtree-tabs'
" 文件快速搜索查找插件
Plugin 'ctrlpvim/ctrlp.vim'
" 状态栏美化插件
Plugin 'vim-airline/vim-airline'
call vundle#end()
