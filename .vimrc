set nocompatible
filetype plugin indent on	 "load plugin and indent files associated with a detected filetype
syntax on
colorscheme gruvbox
set autoindent             " Indent according to previous line.
set smartindent            " Intelligently dedent / indent new lines based on rules.
set expandtab              " Use spaces instead of tabs.
set tabstop     =2         " Tab key indents by 2 spaces
set softtabstop =2         " Tab key indents by 2 spaces.
set shiftwidth  =2         " >> indents by 2 spaces.
set shiftround             " >> indents to next multiple of 'shiftwidth'.
set backspace   =indent,eol,start  " Make backspace work as you would expect.
set laststatus  =2         " Always show statusline.
set display     =lastline  " Show as much s possible of the last line.
set showmode               " Show current mode in command-line.
set showcmd                " Show already typed keys when more are expected.
set ttyfast                " Faster redrawing.
set lazyredraw             " Only redraw when necessary.
set clipboard=unnamed,unnamedplus                " enable clipboard
set hidden                                       " hide buffers, don't close
set mouse=a                                      " enable mouse support
set number relativenumber                                      " show line numbers
set showmatch                                    " show matching brackets
set encoding=utf8                                " enable utf8 support
set autoread                                     " reload on external file changes
set hlsearch ignorecase incsearch smartcase      " search options
set nobackup noswapfile nowritebackup            " disable backup/swap files
set undofile undodir=~/.vim/undo undolevels=9999 " undo options
set cursorline                                   " highlight current line following cursor
set ruler                                        " cursor position in statusline
set path      +=**        " search down into all subfolders
set wildmenu              " display all matching files when tabbing complete
set foldmethod=manual     " select area on v mode and zf, zc to close, zo to open
set scrolloff=1
set sidescrolloff=5
set ttimeout
set ttimeoutlen=100
set history=100
" So we don't have to press shift when we want to get into command mode.
nnoremap ; :
vnoremap ; :
noremap j gj
noremap k gk
let mapleader=" "
" insert newline below in normal mode
nnoremap <Leader>o o<Esc>
" insert newline above in normal mode
nnoremap <Leader>O O<Esc>
" remap for more comfort; go back to most recent buffer
nnoremap <Leader>q <C-^>

