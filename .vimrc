" 非兼容模式运行
set nocompatible

" 语法高亮
syntax on

" ================================================
" Vundle : https://github.com/gmarik/vundle
" ================================================

filetype off " required of vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required
Bundle 'gmarik/vundle'

" Example Bundles from kinds of repos:
"
"==>Original repos on github
" Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-easymotion'
"==> vim-scripts repos
" Bundle 'FuzzyFinder'
" Bundle 'rails.vim'
" Bundle 'L9'
"===> non github repos
" Bundle 'git://git.wincent.com/command-t.git'

" My Bundles Here
Bundle 'Zencoding.vim'

filetype plugin indent on " required of vundle

" ------------- Vundle Brief help -----------------
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve)  removal of unused bundles
" see :h vundle for more details or wiki for FAQ
" Note: comments after Bundle command are not allowed..

" ===============================================================================================
" 平台相关: Windows & Linux @ 2009-04-25

" 平台检测函数 OsDetect
function! OsDetect()
  if has("win32")
    return "windows"
  else
    return "linux"
  endif
endfunction


" 载入windows平台的默认设置
if OsDetect() == 'windows'
  source $VIMRUNTIME/vimrc_example.vim
  source $VIMRUNTIME/mswin.vim
  behave mswin
  " 设置帮助文件为中文，前提是已经安装过了中文帮助
  set helplang=cn
  
  " 设置字体
  set guifont=consolas:h9,courier_New:h8

  "YaHei_consolas_Hybrid字体的使用必须先使vim识别系统全部字体（使用网上重新编译过的gvim替换掉原来的gvim） 
  set guifontwide=YaHei_consolas_Hybrid:h9
endif

" linux平台的设置 @ 2009-05-27
if OsDetect() == 'linux'
  " 设置字体
  " set guifont=Bitstream_Vera_Sans_Mono_Roman:h8
  set guifont=Anonymous_Pro:h12
endif
" ===============================================================================================

" ===============================================================================================
" 编码设置,解决中文乱码 @ 2009-04-25
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
if has("win32")
  set fileencoding=chinese
else
  set fileencoding=utf-8
endif
let &termencoding=&encoding
" 解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" 解决consle输出乱码
language messages zh_CN.utf-8
" ===============================================================================================

" ===============================================================================================
" 个人习惯设置 @ 2009-04-25

" 关闭菜单 @ 2009-06-17
" set guioptions-=m
" 关闭工具栏
set guioptions-=T

" 关闭自动备份
set nobackup

" 关闭交换文件
set noswapfile

" 开启显示行号
" set number

" 开启所在行/列高亮
"set cursorcolumn
"set cursorline

" 设置缩进 @ 2009-04-29
" set cindent
set autoindent
set smartindent
" 使用空格替代tab
set expandtab
" 一个tab为多少空格
set tabstop=4
" 自动缩进宽度
set shiftwidth=4

" 主题 
" colorscheme wombat
" colorscheme desert
" colorscheme paintbox
" colorscheme jammy
" colorscheme molokai
" colorscheme ir_black
 colorscheme tangoX

" 让文本文件也有高亮 @ 2009-05-27
augroup filetypedetect
  au BufNewFile,BufRead *.* setf ztxt
augroup END

" 搜索未输入完成即开始匹配显示 @ 2009-05-27
set is

" 选择文本时光标所在文字也被选中 @ 2009-05-27
set selection=inclusive

" 设置窗口大小
set lines=50 columns=150

" tab 自动区分补全与缩进
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1]!~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>

" 快捷键设置 - 标签页操作 @ 2009-04-29
map te :tabnew<cr>
map tn :tabnext<cr>
map tp :tabprevious<cr>
map tc :tabclose<cr>
" ===============================================================================================

" ===============================================================================================
" 若经常编辑配置文件如_vimrc或者配色文件colors/schemename.vim时
" 需要重新载入或者自动重载文件此时以下的命令非常有用  @ 2009-04-25

" 设置匹配变量
let mapleader = ','
if OsDetect() == 'windows'
  " 重载配置文件
  map <silent> <leader>rrc :source $HOME/.vimrc<cr>
  " 编辑配置文件
  map <silent> <leader>erc :tabedit $HOME/.vimrc<cr>
  " 当写入时自动重载文件
  autocmd! bufwritepost $HOME/vimfiles/colors/tangoX.vim source $HOME/vimfiles/colors/tangoX.vim
elseif OsDetect() == 'linux'
  map <silent> <leader>rrc :source ~/.vimrc<cr>
  map <silent> <leader>erc :tabedit ~/.vimrc<cr>
  autocmd! bufwritepost .vimrc source ~/.vimrc
endif
" ===============================================================================================

" ctags @2009-04-29
" set tags=tags

" 自动切换到文件所在的目录
" set autochdir
