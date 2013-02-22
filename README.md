# VIM配置相关文件

VIM程序相关文件，包括配置、色彩、插件等。记录开始于2009-04-23。

********

## 使用说明：

将此目录clone到用户目录的.vim目录下（windows平台放置于vimfiles目录下）。设置用户目录下的.vimrc直接source该目录下的.vimrc文件。

### Linux / Mac OS X

1.获取dotvim源码，存储在用户目录下的.vim目录中:


    cd ~
    git clone http://github.com/iissnan/dotvim.git .vim
    
    
2.获取[Vundle](https://github.com/gmarik/vundle):


    cd ~/.vim
    git submodule init
    git submodule update
    
    
3.编辑.vimrc，引用.vim下的.vimrc文件:

    
    vim ~/.vimrc
    source ~/.vim/.vimrc
    
    
4.安装bundles:

    
    vim +BundleInstall +qall
    
    
或者启动vim，在命令模式下输入

    :BundleInstall


### Windows

1.安装[Msysgit](http://code.google.com/p/msysgit/):

2.获取dotvim源码，放置在用户目录下的vimfiles目录下:

    
    cd $HOME
    git clone http://github.com/IIssNan/dotvim.git vimfiles
    
    
3.获取[Vundle](https://github.com/gmarik/vundle):

    
    cd $HOME/vimfiles
    git submodule init
    git submodule update
    
    
4.编辑.vimrc，引用vimfiles下的.vimrc:

    
    vim $HOME/.vimrc
    source $HOME/vimfiles/.vimrc
    
    
5.安装bundles:

    
    vim +BundleInstall +qall
    
    
或者启动vim，在命令模式下输入
    :BundleInstall


