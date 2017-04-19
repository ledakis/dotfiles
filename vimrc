" required by vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required

set spell spelllang="en_gb"
set relativenumber
set number
filetype indent plugin on
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise

set incsearch     " show search matches as you type


if &t_Co >= 256 || has("gui_running")
	    "colorscheme molokai 
	    colorscheme mopkai
    endif

if &t_Co > 2 || has("gui_running")
	" switch syntax highlighting on, when the terminal has colors
	     syntax on
     endif

" stop using arrow keys in normal mode
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" add spell check to markdown files
autocmd BufRead,BufNewFile *.md setlocal spell spelllang=en_gb

