" 非兼容模式运行
set nocompatible

" 语法高亮
syntax on
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
  set guifont=Monaco:h8,consolas:h8,courier_New:h8
  " set guifontwide=YaHei_consolas_Hybrid:h9,monaco:h9
  
endif
" linux平台的设置 @ 2009-05-27
if OsDetect() == 'linux'
  " 设置字体
  " set guifont=Bitstream_Vera_Sans_Mono_Roman:h8
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

" 关闭菜单
 set guioptions-=m
" 关闭工具栏
set guioptions-=T

" 关闭自动备份
set nobackup

" 关闭交换文件
set noswapfile

" 开启显示行号
set number!

" 开启所在行/列高亮
"set cursorcolumn
set cursorline

" 设置缩进 @ 2009-04-29
" set cindent
set autoindent
set smartindent
" 使用空格替代tab
set expandtab
" 一个tab为多少空格
set tabstop=2
" 自动缩进宽度
set shiftwidth=2

" 设置主题 黑色wombat 与 白色 tangoLight
" colorscheme wombat
" colorscheme desert
" colorscheme paintbox
" colorscheme darkspectrum
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
set lines=30 columns=120

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
  map <silent> <leader>rrc :source $vim/_vimrc<cr>
  " 编辑配置文件
  map <silent> <leader>erc :tabedit $vim/_vimrc<cr>
  " 当写入时自动重载文件
  autocmd! bufwritepost $vim/vim72/colors/tangoLight.vim source $vim/vim72/colors/tangoLight.vim
elseif OsDetect() == 'linux'
  map <silent> <leader>rrc :source ~/_vimrc<cr>
  map <silent> <leader>erc :tabedit ~/_vimrc<cr>
  autocmd! bufwritepost vimrc source ~/rvimrc
endif
" ===============================================================================================
" ctags @2009-04-29
set tags=tags;
" 自动切换到文件所在的目录
set autochdir

" ===============================================================================================
" 临时配置 @ 2009-05-27
" 新标签页编辑vimrc文件
map <silent> <leader>wgrc :tabedit d:/iissvim/_vimrc<cr> 
map <silent> <leader>lgrc :tabedit ~/.vimrc<cr>
