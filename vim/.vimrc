" Enable syntax highlighting
syntax on

" Set line numbers
set number
set relativenumber

" Enable filetype detection and plugins
filetype plugin on
filetype indent on

" Set basic editing settings
set tabstop=4        " Number of spaces that a <Tab> in the file counts for
set shiftwidth=4     " Number of spaces to use for each step of (auto)indent
set expandtab        " Use spaces instead of tabs
set autoindent       " Copy indent from current line when starting a new line
set smartindent      " Smart autoindenting when starting a new line

" Enable mouse support
set mouse=a          " Enable mouse support in all modes

" Clipboard settings
set clipboard=unnamedplus " Use the system clipboard for all yank, delete, change and put operations

" Visual settings
set cursorline       " Highlight the current line
set wrap             " Wrap long lines
set linebreak        " Wrap lines at convenient points

" Searching settings
set ignorecase       " Ignore case when searching
set smartcase        " Override ignorecase if search pattern contains uppercase letters
set incsearch        " Show match while typing
set hlsearch         " Highlight search matches

" Performance settings
set lazyredraw       " Redraw only when we need to
set ttyfast          " Assume a fast terminal connection

" Initialize Vim-Plug
call plug#begin('~/.vim/plugged')

" Markdown plugin for syntax highlighting and other features
Plug 'plasticboy/vim-markdown'

call plug#end()

" Disable folding for Markdown files
let g:vim_markdown_folding_disabled = 1

" Key mappings
nnoremap <F2> :set paste!<CR> " Toggle paste mode with F2

" Custom status line
set statusline=%F%m%r%h%w\ [%{&ff}]\ [%{&fileformat}]\ [%Y]\ [line\ %l/%L,\ col\ %c]

" Set color scheme (optional)
" colorscheme desert

" Other useful settings
set showcmd           " Show incomplete commands
set wildmenu          " Visual autocomplete for command menu
set backspace=indent,eol,start " Allow backspace in insert mode
set undofile          " Save undo history to an undo file

" Enable persistent undo
if has("persistent_undo")
    set undodir=~/.vim/undodir
    set undofile
endif

" Custom commands and functions (optional)
" Example: Function to trim trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" Navigation
noremap <C-f> <C-d>
noremap <C-b> <C-u>

" Window management
nnoremap <C-w>h <C-w>h
nnoremap <C-w>j <C-w>j
nnoremap <C-w>k <C-w>k
nnoremap <C-w>l <C-w>l
nnoremap <C-w>+ <C-w>+
nnoremap <C-w>- <C-w>-

