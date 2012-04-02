" minibufexpl 是一个buffer管理器，用来显示和管理当前打开的buffer。

" 打开窗口居于最上方
let g:miniBufExplSplitBelow = 0
" 当buffer数量大于1时自动打开
let g:miniBufExplorerMoreThanOne = 0

" ,be打开buffer管理器
nnoremap <Leader>be :TMiniBufExplorer<CR> 
