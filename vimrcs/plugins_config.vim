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

