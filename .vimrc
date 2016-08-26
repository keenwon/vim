" ---------------------------------------------------------------------
"                                                                Custom

" 设置配色方案
syntax enable
set background=dark
"colorscheme molokai
"colorscheme dracula
colorscheme evening
"colorscheme Tomorrow-Night
"colorscheme Tomorrow-Night-Bright
"colorscheme Tomorrow-Night-Eighties

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

" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>

" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>

" 定义快捷键保存所有窗口内容并退出vim
nmap <Leader>WQ :wa<CR>:q<CR>

" 禁用 Ex mode
nmap Q <Nop>

" 不做任何保存，直接退出vim
nmap <Leader>Q :qa!<CR>

" ---------------------------------------------------------------------
"                                                              Pathogen

execute pathogen#infect()
Helptags

" ---------------------------------------------------------------------
"                                                       NERDTree config

" 打开&关闭 <Leader>f
map <Leader>f :NERDTreeToggle<CR>
" 自动打开
"autocmd vimenter * NERDTree
" t 打开新标签页时，保持tree状态
autocmd BufWinEnter * NERDTreeMirror
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
" 忽略文件
let NERDTreeIgnore=[
    \ '.git$[[dir]]', 
    \ '.vscode$[[dir]]', 
    \ '.idea$[[dir]]', 
    \ '.DS_Store$[[file]]', 
    \ '.swp$[[file]]'
\ ]
" 修改文件夹配色，目前是配合molokai主题使用，不同主题需要不同的配置
"hi link NERDTreeDir FoldColumn

" ---------------------------------------------------------------------
"                                                   vim-devicons config

set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete:h12
let g:airline_powerline_fonts=1
let g:WebDevIconsUnicodeDecorateFolderNodes=1
let g:WebDevIconsNerdTreeAfterGlyphPadding=''
let g:WebDevIconsNerdTreeGitPluginForceVAlign=0

" ---------------------------------------------------------------------
"                                                    vim-airline config

" 字体
let g:airline_powerline_fonts=1
" 开启tabline
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_idx_mode=1
" 禁用tab 全部显示成buffer
let g:airline#extensions#tabline#show_tabs=0
" tabline忽略规则
let g:airline#extensions#tabline#excludes=[
    \ 'NERD_tree_*'
\ ]
" 自定义快捷键
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>j <Plug>AirlineSelectPrevTab
nmap <leader>k <Plug>AirlineSelectNextTab

" ---------------------------------------------------------------------
"                                                      ctrlp.vim config

" 显示隐藏文件
let g:ctrlp_show_hidden=1
" 在匹配条目中包含当前文件
let g:ctrlp_match_current_file=1
" 自定义快捷键
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>', '<c-t>']
\ }

" ---------------------------------------------------------------------
"                                                         ag.vim config

let g:ag_working_path_mode="r"

" ---------------------------------------------------------------------
"                                                       vim-bbye config

nmap <Leader>b :Bdelete<CR>

" ---------------------------------------------------------------------
"                                                   vim-startify config

" 设置session保存的目录
let g:startify_session_dir='~/.vim/session'
" 定义界面显示顺序
let g:startify_list_order=[
    \ ['   My sessions:'],
    \ 'sessions',
    \ ['   My most recently used files in the current directory:'],
    \ 'dir',
    \ ['   My most recently used files'],
    \ 'files',
    \ ['   My bookmarks:'],
    \ 'bookmarks',
    \ ['   My commands:'],
    \ 'commands',
\ ]
" 设置session保存前关闭NERDTree
let g:startify_session_before_save = [
    \ 'echo "Cleaning up before saving.."',
    \ 'silent! NERDTreeClose'
\ ]

" ---------------------------------------------------------------------
"                                                         tagbar config

nnoremap <Leader>t :TagbarToggle<CR>

" ---------------------------------------------------------------------
"                                                      syntastic config

" 启用文件类型的全部checker
let g:syntastic_aggregate_errors=1
" error window自动打开，自动关闭
let g:syntastic_auto_loc_list=1
" 定义忽略
let g:syntastic_ignore_files=[
    \ 'node_modules'
\ ]
" 定义 js checkers
let g:syntastic_javascript_checkers=['eslint']

" ---------------------------------------------------------------------
"                                                  nerdcommenter config

" 强制加个空格
let g:NERDSpaceDelims=1

" ---------------------------------------------------------------------
"                                                  YouCompleteMe config

" 最小自动触发补全的字符大小设置为3
let g:ycm_min_num_of_chars_for_completion=3
" 关闭预览窗口
set completeopt-=preview
let g:ycm_add_preview_to_completeopt=0

" ---------------------------------------------------------------------
"                                                 vim-easymotion config

" 跨窗口搜索
nmap <Leader><Leader>f <Plug>(easymotion-overwin-f)