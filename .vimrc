set nocompatible           " not compatible mode
set mouse=a                " enable basic funtionalities of mouse
let mapleader="\<Space>"   " make space leader key

set autoindent             " Indent according to previous line.
set expandtab              " Use spaces instead of tabs.
set softtabstop =4         " Tab key indents by 4 spaces.
set tabstop =4             " Tab key indents by 4 spaces.
set shiftwidth  =4         " >> indents by 4 spaces.
set shiftround             " >> indents to next multiple of 'shiftwidth'.

set laststatus  =2         " Always show statusline.
set display     =lastline  " Show as much as possible of the last line.n

set showmode               " Show current mode in command-line.
set showcmd                " Show already typed keys when more are expected.
set number                 " show line numbers
set relativenumber         " show relative line numbers
set wildmenu               " enable a menu that shows tab completion options in the status bar
set showmatch              " highlights matching brackets on cursor hover
set ruler                  " show cursor position in status bar

set incsearch              " Highlight while searching with / or ?.
set hlsearch               " Keep matches highlighted.
set ignorecase             " ignores the case of a search
set smartcase              " only ignores case if there are no capital letters in search (only works after ignorecase has been set)

set ttyfast                " Faster redrawing.
set lazyredraw             " Only redraw when necessary.

set splitbelow             " Open new windows below the current window.
set splitright             " Open new windows right of the current window.

set cursorline             " Find the current line quickly.
set colorcolumn=80         " Vertical line after 80 character
set wrapscan               " Searches wrap around end-of-file.
set report      =0         " Always report changed lines.
set synmaxcol   =200       " Only highlight the first 200 columns.

set gdefault               " operations like search, replace happen globally

set list                   " Show non-printable characters.
if has('multi_byte') && &encoding ==# 'utf-8'
    let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
    let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif

syntax   enable             " turn syntax highlighting on
filetype plugin indent on   " load plugin and indent files associated a detected filetype
runtime  macros/matchit.vim " allows jumping between brackets with % in normal mode

" eq fuzzy find
" :find to use
set path+=**
set wildmenu

set background=dark
colorscheme gruvbox
