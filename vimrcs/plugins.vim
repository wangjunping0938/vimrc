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
" 状态栏主题插件
Plugin 'vim-airline/vim-airline-themes'
" 配色方案插件
Plugin 'altercation/vim-colors-solarized'
" 代码自动补全插件
Plugin 'Valloric/YouCompleteMe'
" 语法检测插件
Plugin 'vim-syntastic/syntastic'
" 注释功能插件
Plugin 'scrooloose/nerdcommenter'
" python自动缩进插件
Plugin 'vim-scripts/indentpython.vim'
" 缩进指示线插件
Plugin 'Yggdroot/indentLine'
" 括号自动补全插件
Plugin 'jiangmiao/auto-pairs'
" python语法风格检测插件
Plugin 'nvie/vim-flake8'
" 代码折叠插件
Plugin 'tmhedberg/SimpylFold'
" python代码自动格式化为pep8风格插件
Plugin 'tell-k/vim-autopep8'
" 源码查看插件
Plugin 'vim-scripts/taglist.vim'
" HTML元素一键补全插件
Plugin 'mattn/emmet-vim'
call vundle#end()
