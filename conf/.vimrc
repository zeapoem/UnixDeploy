" Encoding
set encoding=utf-8
set fileencoding=utf-8
" UI
syntax on
set number "display line number
if has('mac')
	set guifont=Tsentsiu\ Sans\ Mono\ HG:h16
	colo molokai
elseif has('win32')
	set guifont=Tsentsiu\ Sans\ Mono\ HG:h12
	set go=
"	source $VIMRUNTIME/delmenu.vim
"	source $VIMRUNTIME/menu.vim
"   lang messages zh_CN.utf-8
	colo evening
else
	set guifont=Tsentsiu\ Sans\ Mono\ HG\ 14
	set go=
	colorscheme molokai
endif
"set guifont=Source\ Code\ Pro:h14
"set guifont=Inziu\ Iosevka\ SC:h14
"set guifont=Courier\ New:h16
set ruler "display ruler
set showcmd
set cursorline "highlight cursor line
set cursorcolumn "highlight cursor column
set gcr=a:block-blinkon0
set laststatus=2
set ts=4
set sw=4
set expandtab "expand Tabs to Spaces
set autoindent

set background=dark
" Transparent in terminal
hi Normal ctermbg=NONE

set backspace=indent,eol,start


set magic
set nofoldenable 
"

" Search
set hlsearch
set showmatch


" Vundle 
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

