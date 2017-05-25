" VIM not VI
set nocompatible

"======================"
" Vundle configuration "
"======================"

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
if isdirectory(expand('$HOME/.vim/bundle/Vundle.vim'))
  call vundle#begin()

  " Required
  Plugin 'gmarik/vundle'
  " Install plugins that come from github.  Once Vundle is installed, these can be
  " installed with :PluginInstall
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'scrooloose/syntastic'
  Plugin 'scrooloose/nerdcommenter'
  " Plugin 'ctrlpvim/ctrlp.vim'

else
  echomsg 'Vundle is not installed. You can install Vundle from'
      \ 'https://github.com/VundleVim/Vundle.vim'
endif

"==============="
" BASIC OPTIONS "
"==============="

" Syntax highlighting on
syntax on

" Line numbers on
set number

" Chars for marking whitespace
"set list listchars=tab:>\ ,trail:$¶

" Search highlighting on
set hlsearch

" Remap this to something else
noremap <s-k> <CR>

" Map <leader> to ,
let mapleader=','

" Show command at the bottom
set showcmd

" Make copy/pasting better
set pastetoggle=<F2>

" Stick backups in a better place
set backupdir=$HOME/.vim/backup

