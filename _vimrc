set nocompatible
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

" 关闭自动备份
set nobackup

" 关闭交换文件
set noswapfile

" 开启显示行号
set nu!

" 开启所在行/列高亮
"set cursorcolumn
set cursorline

" 设置tab缩进
set sts=2
set expandtab tabstop=2 shiftwidth=2

" 设置字体
set guifont=Monaco:h8,consolas:h8,courier_New:h8
set guifontwide=YaHei_consolas_Hybrid:h9,monaco:h9

" 设置主题
colorscheme tangoLight

" 设置窗口大小
set lines=30 columns=120
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
  map <silent> <leader>erc :e $vim/_vimrc<cr>
  " 当写入时自动重载文件
  autocmd! bufwritepost $vim/vim72/colors/tangoLight.vim source $vim/vim72/colors/tangoLight.vim
elseif OsDetect() == 'linux'
  map <silent> <leader>rrc :source ~/.vimrc<cr>
  map <silent> <leader>erc :e ~/.vimrc<cr>
  autocmd! bufwritepost vimrc source ~/.vimrc
endif
" ===============================================================================================
