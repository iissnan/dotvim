" Tango Light Vim Color Scheme
" =============================
"
" ONLY FOR GUI
"
" author: IIssNan <iissnan@gmail.com>
" version: 0.1 intialed.
"

set background=light
 
hi clear
if exists("syntax_on")
    syntax reset
endif
 
let colors_name = "tangoLight"
 
" Default Colors
hi Normal guifg=#2e3436 guibg=#fefefe
hi NonText guifg=#555753 guibg=#fefefe gui=none
hi Cursor guibg=#222222
hi CursorLine guibg=#eeeeec
hi lCursor guibg=#d3d7cf
hi LineNr guifg=#555753 guibg=#d3d7cf
 
" 搜索
hi Search guifg=#eeeeec guibg=#204a87
hi IncSearch guibg=#eeeeec guifg=#729fcf
 
" 窗口
hi StatusLine guifg=#ffffff guibg=#204a87 gui=bold
hi StatusLineNC guifg=#d3d7df guibg=#4e9a06
hi VertSplit guifg=#eeeeec guibg=#eeeeec
hi Folded guifg=#d3d7cf guibg=#729fcf
hi Visual guifg=#eeeeec guibg=#75507b
 
" Specials
hi Todo guifg=#ffffff guibg=#4e9a06 gui=bold
hi Title guifg=#5c3566 gui=bold
 
" 注释
hi Comment guifg=#06989a gui=italic

" 常数组
hi Constant guifg=#3465a4
hi String guifg=#3465a4
hi Character guifg=#3465a4
hi Number guifg=#ce5c00
hi Boolean guifg=#3465a4
hi Float guifg=#ce5c00

" 语句组
hi Statement guifg=#ce5c00 gui=none
hi Conditional guifg=#ef2929
hi Repeat guifg=#ef2929
hi Label guifg=#ef2929
hi Operator guifg=#4e9a06
hi Keyword guifg=#ef2929
hi Exception guifg=#ef2929

" 变量组
hi Function guifg=#5c3566
hi Identifier guifg=#6A5ACD

" 预处理命令组
hi PreProc guifg=#6A5ACD
hi Include guifg=#6A5ACD
hi Define guifg=#6A5ACD
hi Macro guifg=#6A5ACD
hi PreCondit guifg=#6A5ACD

hi Underlined guifg=#cc0000 gui=none
hi Type guifg=#204a87 gui=none
hi Special guifg=#555753
hi Error guifg=#fce94f guibg=#a40000
 
" Diff
hi DiffAdd guifg=fg guibg=#3465a4 gui=none
hi DiffChange guifg=fg guibg=#555753 gui=none
hi DiffDelete guibg=bg
hi DiffText guifg=fg guibg=#c4a000 gui=none

