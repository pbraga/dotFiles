" ---------- pbraga vimrc ----------

set nocompatible " Don't try to be vi compatible

filetype off " Helps force plugins to load correctly
" TODO: Load plugins here

filetype plugin indent on " For plugins to load correctly

let mapleader = ","

set modelines=0 " security
set number
set ruler
set visualbell
set encoding=utf-8
syntax on

" Whitespace
set nowrap
set textwidth=80
set colorcolumn=+1
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

set hidden " Allow hidden buffers

set ttyfast " Rendering

set laststatus=2 " Status bar
set showmode
set showcmd

set spelllang=en

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Color scheme (terminal)
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized
let g:airline_powerline_fonts = 1


" git commit messages
function! s:git_settings()
   setlocal textwidth=72
   setlocal nocindent
   setlocal ff=unix
   setlocal spell
endfunction
autocmd FileType gitcommit call s:git_settings()

