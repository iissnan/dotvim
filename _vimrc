set nocompatible
" ===============================================================================================
" ƽ̨���: Windows & Linux @ 2009-04-25

" ƽ̨��⺯�� OsDetect
function! OsDetect()
  if has("win32")
    return "windows"
  else
    return "linux"
  endif
endfunction


" ����windowsƽ̨��Ĭ������
if OsDetect() == 'windows'
  source $VIMRUNTIME/vimrc_example.vim
  source $VIMRUNTIME/mswin.vim
  behave mswin
  " ���ð����ļ�Ϊ���ģ�ǰ�����Ѿ���װ�������İ���
  set helplang=cn
endif
" ===============================================================================================

" ===============================================================================================
" ��������,����������� @ 2009-04-25
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
if has("win32")
    set fileencoding=chinese
else
    set fileencoding=utf-8
endif
let &termencoding=&encoding
" ����˵�����
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" ���consle�������
language messages zh_CN.utf-8
" ===============================================================================================

" ===============================================================================================
" ����ϰ������ @ 2009-04-25

" �ر��Զ�����
set nobackup

" �رս����ļ�
set noswapfile

" ������ʾ�к�
set nu!

" ����������/�и���
"set cursorcolumn
set cursorline

" ����tab����
set sts=2
set expandtab tabstop=2 shiftwidth=2

" ��������
set guifont=Monaco:h8,consolas:h8,courier_New:h8
set guifontwide=YaHei_consolas_Hybrid:h9,monaco:h9

" ��������
colorscheme tangoLight

" ���ô��ڴ�С
set lines=30 columns=120
" ===============================================================================================

" ===============================================================================================
" �������༭�����ļ���_vimrc������ɫ�ļ�colors/schemename.vimʱ
" ��Ҫ������������Զ������ļ���ʱ���µ�����ǳ�����  @ 2009-04-25

" ����ƥ�����
let mapleader = ','
if OsDetect() == 'windows'
  " ���������ļ�
  map <silent> <leader>rrc :source $vim/_vimrc<cr>
  " �༭�����ļ�
  map <silent> <leader>erc :e $vim/_vimrc<cr>
  " ��д��ʱ�Զ������ļ�
  autocmd! bufwritepost $vim/vim72/colors/tangoLight.vim source $vim/vim72/colors/tangoLight.vim
elseif OsDetect() == 'linux'
  map <silent> <leader>rrc :source ~/.vimrc<cr>
  map <silent> <leader>erc :e ~/.vimrc<cr>
  autocmd! bufwritepost vimrc source ~/.vimrc
endif
" ===============================================================================================
