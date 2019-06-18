个人最终版vim配置
===


### 介绍

我本人一直使用vim编辑器作为开发工具,这是我经过一段时间使用经验总结的2个版本
个人建议使用更多功能的版本

- **基础版**: [basic.vim](/vimrcs/basic.vim)
- **多功能版**: 包含一些常用插件,主题,以及一些非常有用的配置

![VIM](/pictures/basic-vim.png)


### 安装教程

- 先将项目克隆至本地目录执行如下指令
    ```Bash
    git clone https://github.com/wangjunping0938/vimrc.git ~/.Vimrc
    ```
- 基础版本安装
    ```Bash
    sh ~/.Vimrc/basic_vim_install.sh
    ```

- 多功能版本安装
    ```Bash
    sh ~/.Vimrc/better_vim_install.sh
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall
    ```

- vim-airline插件需要安装字体
    ```Bash
    git clone git@github.com:powerline/fonts.git ~/fonts
    cd ~/fonts
    ./install.sh
    ```

- YouCompleteMe代码自动补全插件需要手动安装
    ```Bash
    sudo apt install build-essential cmake python3-dev -y
    vim +PluginInstall +qall
    cd ~/.vim/bundle/YouCompleteMe
    python3 install.py
    ```

- syntastic语法检测插件需要安装相关python模块
    ```Bash
    sudo pip3 install pylint
    sudo pip3 install flake8
    ```

- taglist.vim源码浏览插件需要安装如下依赖
    ```Bash
    sudo apt-get install ctags -y
    ```


### 使用说明

![VIM](/pictures/better-vim.png)

1. xxxx
2. xxxx
3. xxxx

### 参与贡献

1. Fork 本仓库
2. 新建 Feat_xxx 分支
3. 提交代码
4. 新建 Pull Request


### 码云特技

1. 使用 Readme\_XXX.md 来支持不同的语言，例如 Readme\_en.md, Readme\_zh.md
2. 码云官方博客 [blog.gitee.com](https://blog.gitee.com)
3. 你可以 [https://gitee.com/explore](https://gitee.com/explore) 这个地址来了解码云上的优秀开源项目
4. [GVP](https://gitee.com/gvp) 全称是码云最有价值开源项目，是码云综合评定出的优秀开源项目
5. 码云官方提供的使用手册 [https://gitee.com/help](https://gitee.com/help)
6. 码云封面人物是一档用来展示码云会员风采的栏目 [https://gitee.com/gitee-stars/](https://gitee.com/gitee-stars/)


### 插件及相关文档

- [vim-option-doc](http://vimdoc.sourceforge.net/htmldoc/options.html)
- [nerdtree](https://github.com/scrooloose/nerdtree)
- [vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs)
- [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim)
- [vim-airline](https://github.com/vim-airline/vim-airline)
- [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
- [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
- [syntastic](https://github.com/vim-syntastic/syntastic.git)
- [nerdcommenter](https://github.com/scrooloose/nerdcommenter)
- [indentpython.vim](https://github.com/vim-scripts/indentpython.vim)
- [indentLine](https://github.com/Yggdroot/indentLine)
- [auto-pairs](https://github.com/jiangmiao/auto-pairs)
- [vim-flake8](https://github.com/nvie/vim-flake8)
- [SimpylFold](https://github.com/tmhedberg/SimpylFold)
- [vim-autopep8](https://github.com/tell-k/vim-autopep8)
- [taglist.vim](https://github.com/vim-scripts/taglist.vim)
- [emmet-vim](https://github.com/mattn/emmet-vim)

