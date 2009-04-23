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
hi StatusLine ctermfg=white ctermbg=green cterm=bold
hi StatusLineNC guifg=#d3d7df guibg=#4e9a06
hi StatusLineNC ctermfg=lightgray ctermbg=darkgreen
hi VertSplit guifg=#eeeeec guibg=#eeeeec
hi Folded guifg=#d3d7cf guibg=#729fcf
hi Folded ctermfg=white ctermbg=magenta
hi Visual guifg=#eeeeec guibg=#75507b
hi Visual ctermbg=white ctermfg=lightgreen cterm=reverse
 
" Specials
hi Todo guifg=#ffffff guibg=#4e9a06 gui=bold
hi Todo ctermfg=white ctermbg=green
hi Title guifg=#5c3566 gui=bold
hi Title ctermfg=white cterm=bold
 
" 注释
hi Comment guifg=#3465a4 gui=italic

" 常数组
hi Constant guifg=#3465a4
hi String guifg=#3465a4
hi Character guifg=#3465a4
hi Number guifg=#ce5c00
hi Boolean guifg=#3465a4
hi Float guifg=#ce5c00

" 语句组
hi Statement guifg=#06989a
hi Conditional guifg=#4e9a06
hi Repeat guifg=#4e9a06
hi Label guifg=#4e9a06
hi Operator guifg=#4e9a06
hi Keyword guifg=#4e9a06
hi Exception guifg=#4e9a06

" 变量组
hi Function guifg=#5c3566
hi Identifier guifg=#cc0000

" 预处理命令组
hi PreProc guifg=#cc0000
hi Include guifg=#cc0000
hi Define guifg=#cc0000
hi Macro guifg=#cc0000
hi PreCondit guifg=#cc0000

hi Underlined gui=none
hi Type guifg=#204a87 gui=none
hi Special guifg=#a40000
hi Error guifg=#4a9e06 guibg=#a40000
 
" Diff
hi DiffAdd guifg=fg guibg=#3465a4 gui=none
hi DiffAdd ctermfg=gray ctermbg=blue cterm=none
hi DiffChange guifg=fg guibg=#555753 gui=none
hi DiffChange ctermfg=gray ctermbg=darkgray cterm=none
hi DiffDelete guibg=bg
hi DiffDelete ctermfg=gray ctermbg=none cterm=none
hi DiffText guifg=fg guibg=#c4a000 gui=none
hi DiffText ctermfg=gray ctermbg=yellow cterm=none

