" ---------
" 自定义配置
" 参考：https://github.com/yangyangwithgnu/use_vim_as_ide
" ---------

" 设置配色方案
syntax enable
set background=dark
"colorscheme solarized
colorscheme molokai
"colorscheme Tomorrow-Night-Bright

" 让配置变更立即生效
autocmd BufWritePost .vimrc source $MYVIMRC

" 定义快捷键的前缀，即<Leader>
let mapleader=";"

" 开启文件类型侦测，并且根据侦测到的不同类型加载对应的插件
filetype plugin indent on

" 设置编码格式
set encoding=utf-8

" 总是显示状态栏
set laststatus=2

" 显示光标当前位置
set ruler

" 开启行号显示
set number

" 高亮显示当前行/列
set cursorline
" set cursorcolumn

" 高亮显示搜索结果
set hlsearch

" 禁止折行
set nowrap

" 将制表符扩展为空格
set expandtab

" 设置编辑时制表符占用空格数
set tabstop=2

" 设置格式化时制表符占用空格数
set shiftwidth=2

" 显示空格
set list
set listchars=tab:▸⋅,space:⋅,trail:•

" 设置退格键
set backspace=2

" 基于缩进或语法进行代码折叠
set foldmethod=syntax

" 启动 vim 时关闭折叠代码
set nofoldenable

" 关闭兼容模式
set nocompatible

" 开启modelines
set modelines=0

" ---------
" Pathogen
" ---------

execute pathogen#infect()

" ---------
" NERDTree config
" ---------

" 打开&关闭 <Leader>fl
map <Leader>fl :NERDTreeToggle<CR>
" 自动打开
autocmd vimenter * NERDTree
" t 打开新标签也时，保持tree状态
autocmd BufWinEnter * NERDTreeMirror
" vim启动时不指定文件，也自动打开NERDtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 关闭全部文件的时候自动关闭NERDtree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
" 忽略文件
let NERDTreeIgnore=['.git$[[dir]]', '.vscode$[[dir]]', '.idea$[[dir]]', '.DS_Store$[[file]]', '.swp$[[file]]']
" 修改文件夹配置，目前是配合molokai主题使用，不同主题需要不同的配置
hi link NERDTreeDir FoldColumn

" ---------
" vim-devicons config
" ---------

set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete:h12
let g:airline_powerline_fonts=1
let g:WebDevIconsUnicodeDecorateFolderNodes=1
let g:WebDevIconsNerdTreeAfterGlyphPadding=''
let g:WebDevIconsNerdTreeGitPluginForceVAlign=0

" ---------
" vim-airline config
" ---------

" 字体
let g:airline_powerline_fonts = 1
" 开启tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>a <Plug>AirlineSelectPrevTab
nmap <leader>f <Plug>AirlineSelectNextTab