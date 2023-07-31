vim9script

set title
set number
set showcmd
set ruler
set so=5
set history=500
set foldcolumn=1
set encoding=utf8
set ffs=unix,dos,mac
set modifiable

try
  colorscheme desert
catch
endtry

set background=dark

set autoread
au FocusGained,BufEnter * checktime

var mapleader = ","

# Status {{{1
set statusline=2
set statusline=%<%f%=\ [%1*%M%*%n%R%H]\ %-19(%3l,%02c%03V%)%O'%02b'
hi User1 term=inverse,bold cterm=inverse,bold ctermfg=red
# 1}}}

#  Swapfile {{{1
set noundofile
set nobackup
set noswapfile
# 1}}}

# Tab {{{1
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
# 1}}}

# Indent {{{1
set autoindent
set breakindent
set copyindent
# 1}}}

# Fold {{{1
set foldenable
if expand('%:e') == 'vim'
  set foldmethod=marker
else
  set foldmethod=indent
endif
# 1}}}

# Plugin {{{1
syntax on
filetype plugin on
filetype indent on
# 1}}}
