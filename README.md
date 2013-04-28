# VIM配置相关文件

VIM程序相关文件，包括配置、色彩、插件等。记录开始于2009-04-23。

**********

## 安装：


### Linux / Mac OS X

1.获取dotvim源码，存储在用户目录下的.vim目录中:

    cd ~
    git clone http://github.com/iissnan/dotvim.git .vim

2.获取[Vundle](https://github.com/gmarik/vundle):

    cd ~/.vim
    git submodule init
    git submodule update


3.编辑.vimrc，加入代码:
    
    source ~/.vim/.vimrc

4.安装bundles:

    
    vim +BundleInstall +qall

或者启动vim，在命令模式下输入

    :BundleInstall

若遇到`certificate verification`错误，可以跳过CA校验：

    export GIT_SSL_NO_VERIFY=1



### Windows

1.安装[Msysgit](http://code.google.com/p/msysgit/):

2.获取dotvim源码，放置在用户目录下的vimfiles目录下:

    
    cd $HOME
    git clone http://github.com/iissnan/dotvim.git vimfiles


3.获取[Vundle](https://github.com/gmarik/vundle):

    
    cd $HOME/vimfiles
    git submodule init
    git submodule update


4.编辑.vimrc，加入代码:

    source $HOME/vimfiles/.vimrc

5.安装bundles:

    
    vim +BundleInstall +qall


或者启动vim，在命令模式下输入

    :BundleInstall

若遇到`certificate verification`错误，可以跳过CA校验：

    export GIT_SSL_NO_VERIFY=1

