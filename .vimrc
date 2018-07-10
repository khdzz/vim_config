set nocompatible

autocmd BufWritePost $MYVIMRC source $MYVIMRC

colorscheme desert

set laststatus=2

set cmdheight=2

set nu

set backspace=indent,eol,start

set ruler

syntax on
syntax enable

"set cursorline
set cursorcolumn
set hlsearch
set incsearch

set autoindent
set cindent

set foldmethod=syntax

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set smarttab

set history=1000

set nobackup
set noswapfile

set gdefault

set langmenu=zh_CN.UTF-8
set helplang=cn



"---------------------------------------
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"------plugins------
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
let NERDTreeWinPos='right'
let NERDTreeWinSize='30'
map <F2> :NERDTreeToggle<CR>

Plugin 'bling/vim-airline'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=' ' 
let g:airline#extensions#tabline#left_alt_sep='|'

Plugin 'mattn/emmet-vim'

Plugin 'scrooloose/syntastic'
let g:syntastic_check_on_open=1
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng="]
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_wq=0
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatusLineFlag()}
set statusline+=%*
"------plugins------
call vundle#end()
filetype plugin indent on
"----------------end-------------------


