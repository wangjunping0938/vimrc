" => VIM信息设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 命令行历史命令记录保留数量
set history=500


" => VIM文件编辑设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 从外部修改文件时自动加载文件变动
set autoread


" => VIM光标移动设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 使用j/k垂直移动光标时光标与顶部或底部保留10行文本
set scrolloff=10
" 使用<,>方向键h,l时光标移至下一行行首,或上一行行尾
set whichwrap+=<,>,h,l
" 修复高延时网络光标移动问题
set timeoutlen=500


" => 选项
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 显示行号
set number
" 行号宽度
set numberwidth=3
" 状态行显示未输入完成的指令
set showcmd
" 始终显示光标当前位置
set ruler
" 高亮显示光标所在行
set cursorline
" 始终显示状态行
set laststatus=2
" 状态行格式
set statusline=\ File:\ %F%m%r%h\ %w\ \ Line:\ %l\ \ Column:\ %c


" => VIM多样设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 关闭与vi的兼容模式
set nocompatible
" 关闭vim欢迎界面
set shortmess+=I
" 命令行高度
set cmdheight=2
" 关闭错误警示音
set noerrorbells
" 关闭可是模式警示音
set novisualbell
" 关闭蜂鸣声
set t_vb=


" => 文件编辑设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 隐藏被遗弃的buffer
set hidden
" 当执行宏指令时不进行重绘(提高性能)
set lazyredraw
" 关闭交换文件恢复支持
set noswapfile
" 打开文件时,光标保持在最后编辑位置
auto BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


" => 文本内容编辑设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 配置回退键功能正常使用
set backspace=indent,eol,start


" => 文本搜索设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 搜索时忽略大小写
set ignorecase
" 搜索时尝试更智能处理搜索
set smartcase
" 高亮显示搜索结果
set hlsearch
" 实时匹配,使得搜索动作类似浏览器中搜索
set incsearch
" 开启对正则表达式的支持
set magic
" 显示光标所在文本中匹配的括号
set showmatch
" 匹配括号时闪烁时间,2/10秒
set matchtime=2


" => 图形界面设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 开启vim原生菜单
set wildmenu


" => 代码折叠设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 开启代码折叠
set foldenable
" 设置折叠表示显示宽度
set foldcolumn=1
" 启动时关闭折叠
set foldlevelstart=99
" 基于语法代码折叠
set foldmethod=syntax
set foldlevel=2


" => 语法高亮设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 开启语法高亮
syntax enable
" 设置配色主题
"colorscheme solarized
try
    colorscheme peachpuff
catch
endtry
" 设置图形界面高亮,终端使用暗黑背景
if has('gui_running')
    set background=dark
else
    set background=light
endif


" => 编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置utf8为标准编码
set encoding=utf8
" 终端编码设置
set termencoding=utf-8
" 文件编码设置
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936,big5,euc-jp,euc-kr,latin1


" => 文本格式设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 使用unix标准文件类型
set fileformats=unix,dos,mac
" 使用空格替代tab键
set expandtab
" 智能使用tab键
set smarttab
" 自动缩进使用4个空格
set shiftwidth=4
" tab键为4个空格
set tabstop=4
" 插入的tab键长度
set softtabstop=4
" 自动折行
set linebreak
" 单行文本宽度
set textwidth=80
" 自动缩进
set autoindent
" 智能缩进
set smartindent
" 自动换行
set wrap


" => 备份设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 关闭备份,因为git,svn本身支持备份
set nobackup
" 仅在编辑文件不需要备份时使用
set nowritebackup


" => 自定义函数
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 按F5键一键调试代码
map <F5> :call RunCode()<CR>
function! RunCode()
    exec "w"
    if &filetype == "python"
        exec "!time python3 %"
    elseif &filetype == "sh"
        exec "!time bash %"
    endif
endfunction

" 根据文件类型自动加入解释器
autocmd BufNewFile *.py,*.sh exec ":call SetTitle()"
func SetTitle()
    if &filetype == "python"
        call setline(1,"\# -*- coding: utf-8 -*-")
    elseif &filetype == "sh"
        call setline(1,"\#! /bin/bash")
    endif
endfunc
