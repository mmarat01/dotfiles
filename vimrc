" this vimrc is a frankestein combination of many people's vimrc files found online
" in github repos, personal blogs, and stackoverflow answers. i even copied their 
" commenting (hehe).
set nocompatible
filetype plugin indent on	 "load plugin and indent files associated a detected filetype
syntax on
colorscheme molokai
set autoindent             " Indent according to previous line.
set smartindent            " Intellegently dedent / indent new lines based on rules.
set expandtab              " Use spaces instead of tabs.
set tabstop     =2         " Tab key indents by 2 spaces
set softtabstop =2         " Tab key indents by 2 spaces.
set shiftwidth  =2         " >> indents by 2 spaces.
set shiftround             " >> indents to next multiple of 'shiftwidth'.
set backspace   =indent,eol,start  " Make backspace work as you would expect.
set laststatus  =2         " Always show statusline.
set display     =lastline  " Show as much as possible of the last line.
set showmode               " Show current mode in command-line.
set showcmd                " Show already typed keys when more are expected.
set ttyfast                " Faster redrawing.
set lazyredraw             " Only redraw when necessary.
set clipboard=unnamed,unnamedplus                " enable clipboard
set hidden                                       " hide buffers, don't close
set mouse=a                                      " enable mouse support
set number                                       " show line numbers
set showmatch                                    " show matching brackets
set encoding=utf8                                " enable utf8 support
set autoread                                     " reload on external file changes
set hlsearch ignorecase incsearch smartcase      " search options
set nobackup noswapfile nowritebackup            " disable backup/swap files
set undofile undodir=~/.vim/undo undolevels=9999 " undo options
set cursorline                                   " highlight current line following cursor
set ruler                                        " cursor position in statusline
" So we don't have to press shift when we want to get into command mode.
nnoremap ; :
vnoremap ; :
" Visual line nav, not real line nav
" If you wrap lines, vim by default won't let you move down one line to the
" wrapped portion. This fixes that.
noremap j gj
noremap k gk

" NERDTree: reasonable defaults from webinstall.dev/vim-nerdtree
source ~/.vim/plugins/nerdtree.vim
" another nerdtree thing to toggle it properly
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
