"===============================================================================
" Vi兼容模式
" 是否允许按照Vi的方法使用Vim
"set compatible " 启用
set nocompatible " 不启用（默认）

"===============================================================================
" 文件类型检测
" 可以根据不同的文件类型使用不同的配置和快捷键
filetype on " 启用（默认）
"filetype off " 不启用

" 按照文件类型加载插件
filetype plugin on " 启用（默认）
"filetype plugin off " 不启用

" 按照文件类型使用缩进
filetype indent on " 启用（默认）
"filetype indent off " 不启用

"===============================================================================
" 语法高亮
" 启用后可以将文件类型中特有的字符用其他颜色显示
syntax on " 启用（默认）
"syntax off " 不启用

"===============================================================================
" 文件格式和编码
" 编码
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" 文件格式
set fileformat=unix
set fileformats=unix,dos,mac

"===============================================================================
" 缩进
set softtabstop=4
set expandtab       " replace tab to whitespace.
set tabstop=4       " show tab indent word space.
set shiftwidth=4    " tab length

set linebreak       " break full word.
set autoindent      " new line indent same this line.
set smartindent

"===============================================================================
" 分割窗口
set splitright
"set splitbelow

"===============================================================================
" 自动折叠
set foldmethod=syntax
set foldlevel=6
set foldcolumn=0

" 大小写敏感设置
set ignorecase
set smartcase

" 显示行号
set number

" fixed.
set scrolloff=3

" 设置宽度不明的文字(如 “”①②→ )为双宽度文本。
" @see http://blog.sina.com.cn/s/blog_46dac66f010006db.html
set ambiwidth=double

" 高亮当前行
set cursorline
" 高亮当前列
set cursorcolumn

" 历史记录
set history=500

" 交换文件(swrap file)，自动备份(auto backup)设置。
set nobackup

" 状态栏。
set laststatus=2
"set statusline=%t\ %1*%m%*\ %1*%r%*\ %2*%h%*%w%=%l%3*/%L(%p%%)%*,%c%V]\ [%b:0x%B]\ [%{&ft==''?'TEXT':toupper(&ft)},%{toupper(&ff)},%{toupper(&fenc!=''?&fenc:&enc)}%{&bomb?',BOM':''}%{&eol?'':',NOEOL'}]
"let &statusline=' %t %{&mod?(&ro?"*":"+"):(&ro?"=":" ")} %1*|%* %{&ft==""?"any":&ft} %1*|%* %{&ff} %1*|%* %{(&fenc=="")?&enc:&fenc}%{(&bomb?",BOM":"")} %1*|%* %=%1*|%* 0x%B %1*|%* (%l,%c%V) %1*|%* %L %1*|%* %P'

" 自动换行。
" NOTE: this setting will change text source.
" set textwidth=80
" set fo+=m

" 共享系统剪贴板（yank的时候同时存储到剪贴板中）。
"set clipboard+=unnamed

" 设置窗口默认大小
"set columns=80
"set lines=30

" 字体设置
" @see http://support.microsoft.com/kb/306527/zh-cn
" @see http://www.gracecode.com/archives/1545/
" @see http://blog.xianyun.org/2009/09/14/vim-fonts.html
"if g:OS#win
"    set guifont=Courier_New:h12:cANSI
"elseif g:OS#mac
"    set guifont=Courier_New:h16
"elseif g:OS#unix
"endif

" 持久化撤销设置。
"if has("persistent_undo")
"    set undofile
"    set undolevels=1000
"
"    if g:OS#win
"        set undodir=$VIM\undodir
"        au BufWritePre undodir/* setlocal noundofile
"    else
"        set undodir=~/.undodir
"        au BufWritePre ~/.undodir/* setlocal noundofile
"    endif
"endif
