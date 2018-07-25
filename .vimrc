"spaces and tabs
syntax enable
set tabstop=2
set softtabstop=2
set expandtab 

"UI config
set number
set showcmd
set cursorline
filetype indent on "load filetype specific indent files
set wildmenu "visual autocomplete for command menu
set showmatch "highlights matching parenthesis

"Searching
set hlsearch
set incsearch "search as characters are entered

"Auto-install VimPlug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"VimPlug plugins
call plug#begin('~/.vim/plugged')
Plug 'tomasiser/vim-code-dark' "vim-code-dark color scheme
call plug#end()

colorscheme codedark
