"===============================================================================
" 基础设置
"
" Vi兼容模式
"set compatible " 兼容Vi模式
set nocompatible " 不兼容Vi模式

" 文件类型检测
filetype on " 启用文件类型检测
filetype plugin on " 启用文件类型插件
filetype indent on " 启用文件类型缩进

" 文件编码
set encoding=utf-8 " Vim内部编码，主要针对Vim脚本等执行时使用
set fileencoding=utf-8 " 设置当前缓冲区中文件的编码
set fileencodings=utf-8,ucs-bom,cp936,gb18030,big5,euc-jp,euc-kr,latin1 " 读取文件时尝试使用的编码列表

" 文件格式
set fileformat=unix " 文件换行符
set fileformats=unix,dos,mac " 读取文件时尝试文件换行符列表

" 历史记录
set history=500 " 最大历史记录数量500

" 交换文件
set nobackup " 关闭自动备份

" 将map leader改为逗号
let mapleader = ","

" 保存~/.vimrc文件后自动生效
au BufWritePost *.vimrc source %

"===============================================================================
" 显示设置
"
" 语法高亮
syntax on " 启用语法高亮

" 行号
set number " 显示行号

" 缩进
set expandtab       " 使用空格替换Tab制表符
set tabstop=4       " 缩进空格数
set softtabstop=4   " 协调tabstop和标准8个空格缩进的差距，实际用制表符和空格模拟出4空格数的缩进
set shiftwidth=4    " autoindent每次缩进的空格数

set autoindent      " 新行与上一行有相同的缩进
set smartindent     " 根据代码语法自动添加缩进

" 高亮指示
"set cursorline " 高亮指示光标所在行
"set cursorcolumn " 高亮指示光标所在列

" 括号配对
set showmatch " 光标在括号上时，高亮其配对括号

" 自动折叠
set foldmethod=syntax " 按照语法实施折叠
set foldlevel=6
set foldcolumn=0

" 滚动
set scrolloff=5 " 距离边缘5行时提前滚动

" 状态栏
set laststatus=2 " 在所有窗口显示状态栏
" 状态栏信息 :h statusline 详细配置说明
" 路径/文件名[修改标记][只读标记][帮助文件标记][预览窗口标记][文件行数|行号:列号][文件类型]
set statusline=%t%m%r%h%w[%L\|%l:%c]%y 

"===============================================================================
" 操作设置
"
" 分割窗口
" 关闭时，垂直分割窗口新窗口在左侧
set splitright " 垂直分割窗口时，新窗口在右侧
" 关闭时，水平分割窗口新窗口在上方
set splitbelow " 水平分割窗口时，新窗口在下方

" 设置宽度不明的文字(如 “”①②→ )为双宽度文本。
" @see http://blog.sina.com.cn/s/blog_46dac66f010006db.html
set ambiwidth=double " 作为双宽度文本（默认）
"set ambiwidth=single " 作为单宽度文本

"===============================================================================
" 搜索设置
"
" 大小写敏感设置
set ignorecase " 搜索时忽略大小写
set smartcase "当搜索字符串有大写时，不忽略大小写

" 搜索结果高亮
set hlsearch " 高亮显示所有搜索结果

" 实时搜索
set incsearch " 键入搜索字符串的同时搜索

"===============================================================================
" 以下部分由脚本程序控制，请不要自行添加删除内容
"===============================================================================

" 启用Pathogen
call pathogen#infect()

"===============================================================================
" 自动加载模块配置文件
let s:vimrc_dPath = $HOME . '/.vim/vimrc.d'
let s:ext = 'vimrc'
for s:vimrcFileExt in split(glob(s:vimrc_dPath .'/*.'. s:ext), "\n")
    if !isdirectory(s:vimrcFileExt)
        execute 'source '.s:vimrcFileExt
    endif
endfor
