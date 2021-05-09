
"------------插件安装-------------------
call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'brooth/far.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'stanangeloff/php.vim'
Plug 'majutsushi/tagbar'
Plug 'lfv89/vim-interestingwords'
Plug 'scrooloose/syntastic'
Plug 'ludovicchabant/vim-gutentags'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'zivyangll/git-blame.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'moll/vim-bbye'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary' "gc注释代码
Plug 'tpope/vim-abolish' "查找替换插件:Subvert/address{,es}/reference{,s}/g
Plug 'mattn/vim-gist' "将配置文件传到github的gists
Plug 'mattn/webapi-vim'
Plug 'apzelos/blamer.nvim'
Plug 'rust-lang/rust.vim'
Plug 'preservim/nerdcommenter'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
"主题
Plug 'w0ng/vim-hybrid'
Plug 'morhetz/gruvbox'
Plug 'rafi/awesome-vim-colorschemes'
call plug#end()

"------设置leader键-----------
let mapleader=','

"------设置主题-----------
" colorscheme hybrid
colorscheme gruvbox
" colorscheme one
" colorscheme seoul256
" colorscheme lucius


"-------vim基础配置-----
" 显示行号
set number
" 显示当前行
set cursorline
" 显示当前列
" set cursorcolumn
" 打开相对行显示
set relativenumber
"始终显示窗口状态即使只有两个
set laststatus=2
"显示行号和列号
set ruler
" 打开语法高亮显示
syntax enable
" 允许用指定语法高亮替换默认
" syntax on
" 设置背景色
set background=dark
" set background=light
" tab设置为4个空格
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 将制表符扩展为空格
set expandtab
"在底部显示键入的命令
set showcmd
set vb t_vb=
" 自动对齐当o或O等
set autoindent
" 智能对齐
set smartindent
" 用space替代tab输入
"set expandtab
" 不用space替代tab输入，默认如此
"set noexpandtab
" c语言格式对齐
set cindent
" 开启自动查找单词,输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果
set incsearch
" 启动文件类型加载插件根据文件类型不同加载对应插件
if has('autocmd')
    filetype plugin indent on
endif
" 启动vim时不显示介绍信息
set shortmess+=I
" 默认设置窗口标题
set title
" 搜索时不忽略大小写（默认也是这样）
set smartcase
" 搜索时忽略大小写
"set ignorecase
" 启用搜索突出显示
"set hlsearch

" 在状态栏显示mode而不是单独显示
set noshowmode
"启用256色
set t_Co=256
" 启用鼠标
"set mouse=a
"不启用任何提示音
"set noerrorbells
"set visualbell
"命令模式下，底部操作指令按下 Tab 键自动补全。第一次按下 Tab，会显示所有匹配的操作指令的清单；第二次按下 Tab，会依次选择各个指令
set wildmenu
set wildmode=longest:list,full
" 隐藏缓冲区
set hidden " 避免必须保存修改才可以跳转buffer
" 将历史记录增加到1000
set history=1000
" vim
set wrap
"打开英语单词的拼写检查
"set spell spelllang=en_us
"不创建备份文件
"set nobackup
"不创建交换文件
set noswapfile
"保存撤销历史，下次打开文件可以继续使用撤销等操作
set undofile
"设置文件保存路径这些文件要先创建一下
"set backupdir=~/.vim/.backup/  
"set directory=~/.vim/.swp/
set undodir=~/.vim/.undo/ 
"工作目录随文件改变而改变到正在编辑的文件目录中
"set autochdir
"光标遇到圆括号、方括号、大括号时，自动高亮对应的另一个圆括号、方括号和大括号
set showmatch
"如果行尾有多余的空格（包括 Tab 键），该配置将让这些空格显示成可见的小方块
set listchars=tab:»■,trail:■
set list
"指定折行处与编辑窗口的右边缘之间空出的字符数
set wrapmargin=2
" 避免粘贴代码乱格式
set pastetoggle=<F9>
"生成tags
set tags=./tags;../tags
" 开启文件类型检测--自适应不同语言的智能缩进
filetype plugin on
" 基于缩进或语法进行代码折叠
"set foldmethod=indent
" set foldmethod=syntax
" 设置 tagbar 子窗口的位置出现在主编辑区的左边 
let tagbar_left=1
" let tagbar_right=1
" set autoread
" set autowriteall
" 代码折叠:za--打开或关闭当前折叠，zM关闭所有折叠,zR打开所有折叠
set foldmethod=indent "基于缩进进行折叠
" set foldmethod=manual "手动建立折叠
" set foldmethod=syntax "基于语法进行折叠
" set foldmethod=diff "基于未更改文本进行折叠
set nofoldenable "启动vim时关闭折叠




"---------插件配置-----------------
"插件:'vim-airline/vim-airline'和'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1  " 支持 powerline 字体
"选择airline显示的主题
" let g:airline_theme='powerlineish'
let g:airline_theme='one'
let g:airline#extensions#tabline#enabled = 1 " 显示窗口tab和buffer
let g:airline#extensions#tabline#buffer_nr_show=1 " 显示 buffer 编号，方便切换
let g:airline#extensions#branch#enabled = 1 "显示git分支
" let g:airline#extensions#tabline#formatter = 'default'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" let g:airline_left_sep = '▶'
" let g:airline_left_alt_sep = '❯'
" let g:airline_right_sep = '◀'
" let g:airline_right_alt_sep = '❮'
" let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'

"插件： 'scrooloose/nerdtree'
" When writing a buffer (no delay).
"按r刷新nerdtree;s vsplit 一个新窗口打开选中文件，并跳到该窗口;t 在新Tab 中打开选中文件/书签，并跳到新 Tab;i split 一个新窗口打开选中文件，并跳到该窗口;m    文件操作：复制、删除、移动等;
"call neomake#configure#automake('w')
nnoremap <leader>v :NERDTreeFind<cr>
nnoremap <leader>g :NERDTreeToggle<cr>
let NERDTreeShowHidden=1
let NERDTreeAutoDeleteBuffer = 1  " Auto delete buffer deleted with NerdTree
" 让目录显示到左边/右边
let g:NERDTreeWinPos ="right"
"Making it prettier
" let NERDTreeMinimalUI = 1
" let NERDTreeDirArrows = 1
" autocmd vimenter * NERDTree  "自动开启Nerdtree
"let g:NERDTreeWinSize = 25 "设定 NERDTree 视窗大小
"let NERDTreeShowBookmarks=1  " 开启Nerdtree时自动显示Bookmarks
""打开vim时如果没有文件自动打开NERDTree
" autocmd vimenter * if !argc()|NERDTree|endif
"当NERDTree为剩下的唯一窗口时自动关闭
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") &&
"b:NERDTree.isTabTree()) | q | endif
""设置树的显示图标
" let g:NERDTreeDirArrowExpandable = '▸'
" let g:NERDTreeDirArrowCollapsible = '▾'
" let NERDTreeIgnore = ['\.pyc$']  " 过滤所有.pyc文件不显示
"let g:NERDTreeShowLineNumbers=1  " 是否显示行号
"let g:NERDTreeHidden=0     "不显示隐藏文件

"插件：scrooloose/nerdtree和Xuyuanp/nerdtree-git-plugin
"显示忽略文件的状态
" let g:NERDTreeShowIgnoredStatus = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

"插件：'easymotion/vim-easymotion'
"默认<leader><leader>w向下查找，<leader><leader>b向上查找
" 查找视区全部
nmap ss <Plug>(easymotion-s2)
"插件：'majutsushi/tagbar'
noremap <leader>t :TagbarToggle<cr>
"插件：'zivyangll/git-blame.vim'
nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>
"'junegunn/fzf' 'junegunn/fzf.vim'
nnoremap <leader>a :Rg<space>
nnoremap <leader>A :exec "Rg ".expand("<cword>")<cr>
autocmd VimEnter * command! -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)
" 插件：'moll/vim-bbye'
nnoremap <Leader>q :Bdelete<CR>

"插件：mattn/vim-gist
":Gist发布到github以新的gist存储;:Gist -l列出当前用户所有公开的gist;Gist -b发布新的gist然后打开浏览器查看gist;Gist -f克隆到自己名下;Gist id将指定id(id就是git文件最后的域名)的gist载入到新缓冲区;Gist -P更新公开的gist;Gist -p更新私有的gist
" let g:gist_use_password_in_gitconfig = 1
" let github_user='Borer'
" let g:github_token
"发布后打开浏览器
" let g:gist_open_browser_after_post = 1
"插件 fzf.vim
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
" 插件 apzelos / blamer.nvim  用于直接显示代码某行是谁写的
" 启用该插件
" let g:blamer_enabled = 1
" 设置延迟时间：毫秒;设置太低将导致性能问题
" let g:blamer_delay = 10
" 设置可视模式下启用/禁用blamer
" let g:blamer_show_in_visual_modes = 0
" 模板前缀设置
" let g:blamer_prefix = '   '
" 设置模板：可用选项：<author>，<author-mail>，<author-time>，<committer>，<committer-mail>，<committer-time>，<summary>，<commit-short>，<commit-long>
" let g:blamer_template = '<committer>, <committer-time> • <summary>'
" 设置时间格式
" let g:blamer_date_format = '%d/%m/%y %H:%M'
" 设置显示颜色link Blamer Comment
" highlight Blamer guifg=lightgrey
" 主题插件Solarized 8配置
" 不使用终端的颜色等配置
" set t_Co=16
" 插件ayu主题
" set termguicolors     " enable true colors support
" let ayucolor=light  " for light version of theme
" let ayucolor=mirage " for mirage version of theme
" let ayucolor=dark   " for dark version of theme
" rust.vim插件
let g:rustfmt_autosave = 1 "使用rustfmt格式化代码
" preservim/nerdcommenter插件
" <leader>cc添加注释，<leader>cu取消注释,<leader>c<space>智能判断添加和取消注释
let g:NERDSpaceDelims=1     " 注释后面自动加空格
" 插件vim-lsp-settings配置
" 设置语言servers存放目录默认为：$HOME/.local/share/vim-lsp-settings/servers
" :LspInstallServer在编辑的文件执行，自动安装对应语言server
" g:lsp_settings_servers_dir=////
" set foldmethod=expr
"   \ foldexpr=lsp#ui#vim#folding#foldexpr()
"     \ foldtext=lsp#ui#vim#folding#foldtext()

" if executable('pyls')
    " " pip install python-language-server
    " au User lsp_setup call lsp#register_server({
        " \ 'name': 'pyls',
        " \ 'cmd': {server_info->['pyls']},
        " \ 'allowlist': ['python'],
        " \ })
" endif
" 禁用文件诊断
" let g:lsp_diagnostics_enabled  =  0
" 正常模式下启用光标下回显
let g:lsp_signs_enabled  =  1
let g:lsp_diagnostics_echo_cursor = 1
function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    " if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-declaration)
    nmap <buffer> <c-]> <plug>(lsp-definition)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gD <plug>(lsp-implementation)
    nmap <buffer> 1gd <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <Plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <Plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    nmap <buffer> g0 <plug>(lsp-document-symbol)
    nmap <buffer> gW <plug>(lsp-workspace-symbol)
    nmap <buffer> <leader>df <plug>(lsp-document-format)
    nmap <buffer> <leader>drf <plug>(lsp-document-range-format)
endfunction
augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
" let g:lsp_log_verbose = 1
" let g:lsp_log_file = expand('~/vim-lsp.log')

" " for asyncomplete.vim log
" let g:asyncomplete_log_file = expand('~/asyncomplete.log')



"-----------映射键配置--------------
" 插入匹配括号
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>
" save file
nnoremap <leader>w :wa<CR>
" Save a file as root (,W)
noremap <leader>W :wa sudo://%<CR>
inoremap <leader>w <Esc>:wa<cr>a
" inoremap jj <Esc>`^
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"手动生成标签配置
"ctags--vim默认快捷键c-]跳到一个函数处(:tnext下一个匹配处，:tprevious上一个)，g-]列出所有函数
"c-i返回上一个查看函数的地方，c-o返回上一次光标停留处,c-t返回先前调用处
nnoremap <F5> :!ctags -R<cr>
"nnoremap <F5> :call pathogen#helptags()<cr>
" 避免跳转时只匹配第一个，而是可以选择转到哪个
" map <c-]> g<c-]>
" buffer
nnoremap <s-Tab> :bp<CR>
nnoremap <Tab> :bn<CR>
" insert
inoremap <C-u> <Esc>$v^di
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-e> <Esc>$a
inoremap <C-l> <Esc>ggvG$di
"tnux中连续按两次c-a就可以到行首同时tmux配置中加bind C-a send-prefix
inoremap <C-a> <Esc>^i
inoremap <C-d>d <Esc>^v$yo<C-r>0
" 切分窗口后光标移动到新开的窗口
nnoremap <C-w>s <C-w>s<C-w>w
nnoremap <C-w>v <C-w>v<C-w>w
"map <C-space> /



"----------其他------
"let g:ctrlp_map='<c-p>'
"let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:Lf_ReverseOrder = 1
"一种当文件保存时自动生成tags的方法配置，同时在~/.oh-my-zsh/.git/hooks中添加文件ctags
"另一种生产tags方法是插件：ludovicchabant/vim-gutentags;"tags保存文件时自动生成，:call pathogen#helptags()生成文档标签，help gutentags帮助文档
"set statusline+=%{gutentags#statusline()}
if !has('gui_running')
	  set t_Co=256
endif

autocmd FileType php set omnifunc=phpcomplete#CompletePHP


"vim教程
"ctrl+v：选择块shift+i进入输入模式然后在第一行操作完成进入normal模式后其他选中内容将执行同样操作
"ctrl+y：背景向上移动
"ctrl+e：背景向下移动
"e--end word
"w--word

" 控制透明--且要加在colorscheme后面
hi Normal ctermfg=252 ctermbg=none
