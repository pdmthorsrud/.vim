
"vundlestuff{{{
"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=/home/pdthorsr/.vim/bundle/Vundle.vim
call vundle#begin()
set directory=.,$TEMP "makes vundle not come up with stupid and annoying error

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'flazz/vim-colorschemes.git'
Plugin 'https://github.com/easymotion/vim-easymotion'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'https://github.com/scrooloose/nerdcommenter.git'
Plugin 'https://github.com/vim-scripts/L9'
Plugin 'https://github.com/kien/ctrlp.vim'
Plugin 'https://github.com/scrooloose/nerdtree'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Put your non-Plugin stuff after this line
"}}}

"basic stuff{{{
set t_Co=256
syntax enable
imap jk <Esc>
let mapleader=","
filetype plugin on
set wildmenu "sets autocomplete when using cmd
filetype indent on
set backspace=indent,eol,start " backspacing over everything in insert mode
set hlsearch " highlight search results
noremap <F8> :nohl<CR>
inoremap <F8> <Esc>:nohl<CR>
set noerrorbells
"}}}

"CtrlP Stuff{{{
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"}}}

"Basic keybindings{{{
noremap <leader>w :w<CR>
nnoremap j gj
nnoremap k gk
nnoremap <c-o> o<ESC>O "makes a new line above and under the line you're on

"CtrlP stuff
map <leader>f :CtrlP<CR>
map <leader>b :CtrlPBuffer<CR>
"}}}

"different estetic stuff{{{
set guioptions-=m
set guioptions-=T
set cursorline
set showmatch
set background=dark 
set guifont=Lucida_Console:h12:cANSI
colorscheme molokai
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


" vim:foldmethod=marker:foldlevel=0
