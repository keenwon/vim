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
autocmd BufWritePost $MYVIMRC source $MYVIMRC

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

" 高亮显示搜索结果
set hlsearch

" 禁止折行
set nowrap

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

" map F2 to open&close NERDTree?
map <F2> :NERDTreeToggle<CR>
" open NERDTree automatically
autocmd vimenter * NERDTree
" open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ---------
" vim-devicons config
" ---------

set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete:h12
let g:Webdevicons_conceal_nerdtree_brackets = 0
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
