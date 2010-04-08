" �Ǽ���ģʽ����
set nocompatible

" �﷨����
syntax on

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
  
  " ��������
  set guifont=consolas:h9,courier_New:h8

  "YaHei_consolas_Hybrid�����ʹ�ñ�����ʹvimʶ��ϵͳȫ�����壨ʹ���������±������gvim�滻��ԭ����gvim�� 
  set guifontwide=YaHei_consolas_Hybrid:h9
endif

" linuxƽ̨������ @ 2009-05-27
if OsDetect() == 'linux'
  " ��������
  " set guifont=Bitstream_Vera_Sans_Mono_Roman:h8
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

" �رղ˵� @ 2009-06-17
" set guioptions-=m
" �رչ�����
set guioptions-=T

" �ر��Զ�����
set nobackup

" �رս����ļ�
set noswapfile

" ������ʾ�к�
set number

" ����������/�и���
"set cursorcolumn
set cursorline

" �������� @ 2009-04-29
" set cindent
set autoindent
set smartindent
" ʹ�ÿո����tab
set expandtab
" һ��tabΪ���ٿո�
set tabstop=2
" �Զ��������
set shiftwidth=2

" ���� 
 colorscheme wombat
" colorscheme desert
" colorscheme paintbox
" colorscheme jammy
" colorscheme molokai
" colorscheme ir_black
" colorscheme tangoX

" ���ı��ļ�Ҳ�и��� @ 2009-05-27
augroup filetypedetect
  au BufNewFile,BufRead *.* setf ztxt
augroup END

" ����δ������ɼ���ʼƥ����ʾ @ 2009-05-27
set is

" ѡ���ı�ʱ�����������Ҳ��ѡ�� @ 2009-05-27
set selection=inclusive

" ���ô��ڴ�С
set lines=30 columns=120

" tab �Զ����ֲ�ȫ������
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1]!~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>

" ��ݼ����� - ��ǩҳ���� @ 2009-04-29
map te :tabnew<cr>
map tn :tabnext<cr>
map tp :tabprevious<cr>
map tc :tabclose<cr>
" ===============================================================================================

" ===============================================================================================
" �������༭�����ļ���_vimrc������ɫ�ļ�colors/schemename.vimʱ
" ��Ҫ������������Զ������ļ���ʱ���µ�����ǳ�����  @ 2009-04-25

" ����ƥ�����
let mapleader = ','
if OsDetect() == 'windows'
  " ���������ļ�
  map <silent> <leader>rrc :source $HOME/.vimrc<cr>
  " �༭�����ļ�
  map <silent> <leader>erc :tabedit $HOME/.vimrc<cr>
  " ��д��ʱ�Զ������ļ�
  autocmd! bufwritepost $HOME/vimfiles/colors/tangoX.vim source $HOME/vimfiles/colors/tangoX.vim
elseif OsDetect() == 'linux'
  map <silent> <leader>rrc :source ~/.vimrc<cr>
  map <silent> <leader>erc :tabedit ~/.vimrc<cr>
  autocmd! bufwritepost .vimrc source ~/.vimrc
endif
" ===============================================================================================
" ctags @2009-04-29
set tags=tags

" �Զ��л����ļ����ڵ�Ŀ¼
set autochdir
