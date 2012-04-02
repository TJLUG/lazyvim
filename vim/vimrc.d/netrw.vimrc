" netrw是一个文件管理器插件，如果是vim 7.0+版本已经随vim发行。

" 让文件在刚刚获得焦点的窗口中打开
let g:netrw_browse_split = 4

" ,fe 打开文件管理器
nnoremap <Leader>fe :25Vexplore<CR>
