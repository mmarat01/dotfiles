" this a frankestein combination of many people's vimrc files found online
" in github repos, personal blogs, and stackoverflow answers. i even copied their
" commenting (hehe).
set nocompatible
filetype plugin indent on	 "load plugin and indent files associated with a detected filetype
syntax on
colorscheme molokai
set autoindent             " Indent according to previous line.
set smartindent            " Intelligently dedent / indent new lines based on rules.
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
set path      +=**        " search down into all subfolders
set wildmenu              " display all matching files when tabbing complete
" So we don't have to press shift when we want to get into command mode.
nnoremap ; :
vnoremap ; :
" tweaks for file browsing on netrw
let g:netrw_banner       =0            " hide ugly top banner
let g:netrw_browse_split =4            " open in prior window (?)
let g:netrw_altv         =1            " open splits to the right
let g:netrw_liststyle    =3            " tree view
let g:netrw_list_hide    =netrw_gitignore#Hide()    " ignore him
let g:netrw_list_hide    .=',\(^\|\s\s\)\zs\.\S\+'  " regex i.e. no idea what this hides
" Visual line nav, not real line nav
" If you wrap lines, vim by default won't let you move down one line to the
" wrapped portion. This fixes that.
noremap j gj
noremap k gk

"
" PLUGINS: actually, i'm trying to avoid these for now. i do see the benefit
" in having some, but i'm learning vim for the sake of portability, so i'll go
" vanilla. i'd like to have a much more IDE-like setup with plugins by
" switching to neovim down the road -- but that's irrelevant for this vimrc :)

" NERDTree: reasonable defaults from webinstall.dev/vim-nerdtree
"source ~/.vim/plugins/nerdtree.vim
" another nerdtree thing to toggle it properly
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p

" Prettier: reasonable defaults from webinstall.dev/vim-prettier
"source ~/.vim/plugins/prettier.vim
" we also want to get rid of accidental trailing whitespace on save
"autocmd BufWritePre * :%s/\s\+$//e
" autoformat settings
" let g:prettier#autoformat = 1
"let g:prettier#autoformat_require_pragma = 0
" list all of the extensions for which prettier should run
"autocmd BufWritePre .babelrc,.eslintrc,.jshintrc,*.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

