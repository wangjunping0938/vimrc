" => nerdtree目录树插件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 启动vim时自动开启目录树
autocmd vimenter * NERDTree
" 自动打开目录树,当启动vim没有指定文件时
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 自动打开目录树,当使用vim打开一个目录时
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
" 指定快捷键Ctrl+n开启关闭目录树
map <C-n> :NERDTreeToggle<CR>
" vim退出时如果仅剩下目录树窗口,则自动退出vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 设置默认图标
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" 设置目录树忽略文件类型
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$','__pycache__']
" 关闭书签显示,帮助信息等
let NERDTreeMinimalUI=1
" 当文件被重命名,或修改后,自动删除无效buffer
let NERDTreeAutoDeleteBuffer=1
" 启动时显示书签列表
let NERDTreeShowBookmarks=1
" 目录树显示行号
let NERDTreeShowLineNumbers=1
" 目录树文件高亮显示设置
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
    exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
    exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
" 文件类型显示颜色设置
call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('cfg', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('conf', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'blue', 'none', 'blue', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('py', 'Magenta', 'none', '#ff00ff', '#151515')


" => nerdtree-git-plugin目录树支持git信号标识插件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 显示被忽略文件状态
let g:NERDTreeShowIgnoredStatus = 1
" 设置自定义符号
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }


" => vim-nerdtree-tabs目录树标签支持插件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 在控制台启动vim时打开目录树标签
let g:nerdtree_tabs_open_on_console_startup=1


" => ctrlp.vim文件快速查找插件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 默认快捷键设置
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" 忽略.gitignore中的文件
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" 使用自定义文件列表命令
let g:ctrlp_user_command = 'find %s -type f'


" => vim-airline状态栏美化插件
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 支持powerline fonts
let g:airline_powerline_fonts = 1
" 开启增强型tabline
let g:airline#extensions#tabline#enabled = 1
" 显示buffer编号
let g:airline#extensions#tabline#buffer_nr_show = 1


" => vim-airline-themes主题插件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 根据匹配颜色自动选择主题
let g:airline_theme='dark'


" => vim-colors-solarized配色方案插件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 主题
colorscheme peachpuff
" 设置不同运行环境使用不同主题
if has('gui_running')
    set background=dark
else
    set background=light
endif
" 设置主题色支持256色
let g:solarized_termcolors=256


" => YouCompleteMe代码自动补全插件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 非插入模式下,关闭补全预览
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" 开启YCM补全
let g:ycm_auto_trigger = 1
" 设置补全列表显示数量
let g:ycm_max_num_identifier_candidates = 10
" 从标签文件中搜集标识符,用以补全
let g:ycm_collect_identifiers_from_tags_files = 1
" YCM从字符串和注释中搜集标识符,用以补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1
" YCM支持编程语言关键字补全
let g:ycm_seed_identifiers_with_syntax = 1
" YCM安全启动,不在询问提取关键字的配置文件
let g:ycm_confirm_extra_conf = 0
" 设置使用tab键或方向键选择补全项
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>']
" 未找到.ycm_extra_conf.py文件时,使用下面路径指定的文件
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" 关闭YCM诊断显示功能
let g:ycm_show_diagnostics_ui = 0
" 设置在键入第2个字符时开始补全
let g:ycm_min_num_of_chars_for_completion = 2
" 选择完补全字符后,自动关闭补全预览窗口
let g:ycm_autoclose_preview_window_after_completion = 1
" 设置使用回车键选择补全项
let g:ycm_key_list_stop_completion = ['<CR>']
" 高亮显示错误或警告
highlight YcmErrorLine guibg=#3f0000
" 设置python解释器路径
let g:ycm_python_interpreter_path = 'python3'
" 设置ctrl+j跳转至方法或类定义处
nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>


" => syntastic语法检测插件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置python语法检测解释器
let g:syntastic_python_flake8_exec = 'python3'
let g:syntastic_python_flake8_args = ['-m', 'flake8']
" 使用指定的语法检测模块
let g:syntastic_python_checkers = ['pylint', 'flake8']
" 指定需要语法检测的文件类型
let g:syntastic_php_checkers = ['py', 'md', 'sh']
" 对当前类型文件开启多个检测程序
let g:syntastic_aggregate_errors = 1
" 始终更新错误列表
let g:syntastic_always_populate_loc_list = 1
" 语法错误标志符号
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_style_error_symbol = '!'
let g:syntastic_style_warning_symbol = '?'
let python_highlight_all=1
" F2自动开启关闭错误窗口,不需要手动
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
map <F2> :SyntasticToggleMode<CR>
" 语法错误检查
execute pathogen#infect()
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


" => nerdcommenter注释插件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 注释分隔符后面添加一个空格
let g:NERDSpaceDelims = 1
" 多行注释使用更紧密的语法
let g:NERDCompactSexyComs = 1
" 注释分隔符左对齐
let g:NERDDefaultAlign = 'left'
" 设置使用语言本身注释符号
let g:NERDAltDelims_java = 1
" 允许注释反转空行
let g:NERDCommentEmptyLines = 1
" 允许处理空白字符
let g:NERDTrimTrailingWhitespace = 1
" 允许检测所有选定行是否有注释
let g:NERDToggleCheckAllLines = 1


" => indentLine缩进指示线插件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 开启缩进指示线
let g:indentLine_enabled = 1
" 缩进指示线字符
let g:indentLine_char = '∶'
" Vim缩进指示线颜色
let g:indentLine_color_term = 239
" GVim缩进指示线颜色
let g:indentLine_color_gui = '#A4E57E'
" 缩进指示线颜色深度
let g:indentLine_color_tty_light = 1 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)
" 改变隐藏(markdown文件开启隐藏)
let g:indentLine_concealcursor = ''


" => auto-pairs括号自动补全插件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 开启飞行模式
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<^[b>'


" => vim-flake8语法风格检测(python)设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 使用F7一键检测代码风格
autocmd FileType python map <buffer> <F3> :call flake8#Flake8()<CR>
" 设置快速修复窗口高度
let g:flake8_quickfix_height=7
" 每次编写python文件时运行代码风格检测
autocmd BufWritePost *.py call flake8#Flake8()


" => SimpylFold代码折叠插件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 折叠文本中开启文档字符串预览
let g:SimpylFold_docstring_preview = 1
" 不折叠import
let g:SimpylFold_fold_import = 0
" 使用空格键代替zo,zc进行代码折叠
nnoremap <space> za


" => vim-autopep8 Python代码自动格式化为pep8规范
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 按F8自动格式化代码风格
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>


" => taglist.vim 源码浏览插件
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 右侧开启浏览窗口
let Tlist_Use_Right_Window = 1
" 显示仅在当前buffer定义的标签
let Tlist_Show_One_File = 1
" 退出vim时关闭标签窗口
let Tlist_Exit_OnlyWindow = 1
" 设置窗口大小
let Tlist_WinWidth = 30
" 设置F4键打开标签窗口
nnoremap <silent> <F4> :TlistToggle<CR>


" => emmet-vim HTML,CSS,JS代码一键补全插件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 仅对HTML/CSS文件开启插件功能
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
" 使用Alt+s 一键补全(alt=ctrl+v)
let g:user_emmet_expandabbr_key = 's'
