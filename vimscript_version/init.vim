"
" Author: Mark Vincent II
" - I created this nvim config for C++ and C development primarily,
"   though I am sure it can be adapted to fit other needs as well.
"
" Non plugin configurations
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching
set ignorecase              " case insensitive
set mouse=v                 " middle-click paste with
set hlsearch                " highlight search
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab
set softtabstop=4           " see multiple spaces as tabstops so <BS> works
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same as line above
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style
filetype plugin indent on   " allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
"set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim


" Plugins via vim plug https://github.com/junegunn/vim-plug
" PlugInstall -> Will install new plugins list here
" PlugClean   -> Will remove any plugin

" Plugin Tagbar requires ctags to be compiled and installed.
" Instructions can be found at https://github.com/universal-ctags/ctags
" Requires pkg-config, autoconf and automake to also be installed.
call plug#begin()
 Plug 'scrooloose/nerdtree'                         " File browser
 Plug 'https://github.com/preservim/tagbar'         " Tagbar, Code navigation
 Plug 'https://github.com/tpope/vim-commentary'     " Commenting, gcc & gc
 Plug 'sheerun/vim-polyglot'                        " Syntax highlighting
 Plug 'https://github.com/airblade/vim-gitgutter'   " Git difference display
 Plug 'sainnhe/everforest'                          " Theme
call plug#end()

" keybindings for nerdtree
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" keybindings for tagbar
nmap <F8> :TagbarToggle<CR>

" everforest theme configuration
if has('termguicolors')
    set termguicolors
endif
set background=dark
let g:everforest_background = 'hard'
let g:everforest_better_performance = 1
silent! colorscheme everforest
