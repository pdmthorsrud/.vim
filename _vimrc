


"basic stuff{{{
syntax enable
imap jk <Esc>
let mapleader=","
filetype plugin on
set wildmenu "sets autocomplete when using cmd
filetype indent on
"}}}

"different estetic stuff{{{
set guioptions-=m
set guioptions-=T
set cursorline
set showmatch
colorscheme molokai
set guifont=Lucida_Console:h12:cANSI
"}}}

"sets all tabstuff{{{
set tabstop=4  
set softtabstop=4
set expandtab
"}}}

"folding{{{
set foldenable
set modelines=2
set foldlevelstart=0
set foldnestmax=10
nnoremap <space> za
set foldmethod=indent
set modeline
"}}}

" edit vimrc/zshrc and load vimrc bindings{{{
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
"}}}

"Basic keybindings{{{
noremap <leader>w :w<CR>
"}}}

"vundlestuff{{{
"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'flazz/vim-colorschemes.git'
Plugin 'powerline/powerline.git'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"}}}

" vim:foldmethod=marker:foldlevel=0
