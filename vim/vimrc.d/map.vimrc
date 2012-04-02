" 使用map可以修改vim默认配置的快捷键，发现属于你自己的组合。
" 本部分map配置参考以下网站：
" http://www.vimbits.com
"
" map命令格式
" map类型   | 目标      | 原命令

" 由于ESC键距离太远，所以在Insert模式下，可以使用jk快速回到命令模式
"inoremap jk <ESC> "如果去掉注释，你将无法输入jk开头的单词。不过确实没有什么单词是jk开头的，暂时先关闭

" 切换窗口
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" 在调整缩进后继续选中，方便继续调整
vnoremap < <gv
vnoremap > >gv

" 将Y的行为和D一致，操作到行尾
" D为删除到行尾
" Y应该是复制到行尾
map Y y$

" 对于自动换行的行采取相同的光标移动方式，不是按j或k时直接跳到下一行
nnoremap j gj
nnoremap k gk

" 快速切换回上一次编辑的buffer
nnoremap <Leader><Leader> <C-^>

" 将搜索结果保持在vim窗口中间显示
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap <silent> g# g#zz
