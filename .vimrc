set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'mattn/emmet-vim'
Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'lambdalisue/vim-fullscreen'
" Plugin 'vim-airline/vim-airline'
" Plugin 'rust-lang/rust.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
set cursorline
set number 
set autoindent
set cindent
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set nowrap
set t_Co=256
set ignorecase
set incsearch
" set colorcolumn=79

set shell=/usr/bin/env\ bash
colorscheme alduin
highlight Comment cterm=bold

" set options for persistent undo
set undofile
set undodir=$HOME/.vim/undo/
set undolevels=1000
set undoreload=10000

" import powerline
python import vim
python from powerline.vim import setup
python setup()
python del setup

" start NERDTree whever we open vim
autocmd VimEnter * NERDTree

" close NERDTree if we don't have a buffer open (apart from the nerdtree
" buffer itself)
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" move the cursor to the file that we're editing
autocmd VimEnter * wincmd p

" file types based on extensions
au BufNewFile,BufRead *.hbs setfiletype html

" options for vim-qt
if has('gui_qt')
    set guioptions=''
    set fullscreen
endif

" file to ignore
set wildignore +=node_modules

" move easily between split windows
nnoremap H <C-w>h
nnoremap J <C-w>j
nnoremap K <C-w>k
nnoremap L <C-w>l
