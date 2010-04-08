VIM配置相关文件
===========================

VIM程序相关文件，包括配置、色彩、插件等。记录开始于2009-04-23。

使用说明：
---------------------------
将此目录clone到用户目录的.vim目录下（windows平台放置于vimfiles目录下）。设置用户目录下的.vimrc直接source该目录下的.vimrc文件。

### Windows平台使用(使用[Msysgit](http://code.google.com/p/msysgit/)) ###
1.将目录复制到用户目录下
    cd "$HOME"
    git clone git@github.com:IIssNan/ivanvim.git vimfiles
2.设置.vimrc引用vimfiles下的.vimrc
    vim .vimrc
    source  $HOME/vimfiles/.vimrc

### Linux平台使用 ###
1.将目录复制到用户目录下
    cd ~
    git clone git@github.com:IIssNan/ivanvim.git .vim
2.设置.vimrc引用.vim下的.vimrc文件
    vim .vimrc
    source ~/.vim/.vimrc
 
[2010-04-08] 引进Rails.vim插件
---------------------------------------------

插件地址： [rails.vim](http://www.vim.org/scripts/script.php?script_id=1567)
插件版本： 4.2

[2010-04-08] 引进Project.vim插件
---------------------------------------------

插件地址： [project.vim](http://www.vim.org/scripts/script.php?script_id=69)
插件版本： 1.4.1
