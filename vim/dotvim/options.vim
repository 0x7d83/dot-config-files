vim9script

set title
set number
set showcmd
set background=light

# status {{{1
set statusline=2
set statusline=%<%f%=\ [%1*%M%*%n%R%H]\ %-19(%3l,%02c%03V%)%O'%02b'
hi User1 term=inverse,bold cterm=inverse,bold ctermfg=red
# 1}}}

# 备份 {{{1
set noundofile
set nobackup
set noswapfile
# 1}}}

# tab {{{1
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
# 1}}}

# 缩进 {{{1
set autoindent
set breakindent
set copyindent
# 1}}}

# 折叠 {{{1
set foldenable
if expand('%:e') == 'vim'
  set foldmethod=marker
else
  set foldmethod=indent
endif
# 1}}}

syntax on
filetype plugin indent on
