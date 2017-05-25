" VI not VI
set nocompatible

" Block potential security vulnerability
set nomodeline

" Allow more encodings
set encoding=utf-8
set fileencoding=utf-8

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
  Plugin 'google/vim-maktaba'
  Plugin 'google/vim-glaive'
  Plugin 'google/vim-codefmt'
  Plugin 'fatih/vim-go'

  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'scrooloose/syntastic'
  Plugin 'scrooloose/nerdcommenter'
  " Plugin 'ctrlpvim/ctrlp.vim'

  call vundle#end()
  call glaive#Install()
else
  echomsg 'Vundle is not installed. You can install Vundle from'
      \ 'https://github.com/VundleVim/Vundle.vim'
endif

filetype plugin indent on


"==============="
" BASIC OPTIONS "
"==============="

" Syntax highlighting on
syntax on

" Line numbers on
set number

" Chars for marking whitespace
set list listchars=tab:»\ ,trail:¬

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

"========="
" BUFFERS "
"========="

" Allow buffers to be hidden if they've been modified
set hidden

" Always show the status line
set laststatus=2
" 256 colors
set t_Co=256
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
" Set the airline theme
let g:airline_theme='cool'


" New buffer
nmap <leader>wn :enew<CR>
" Next buffer
nmap <leader>k :bnext<CR>
" Prev buffer
nmap <leader>j :bprevious<CR>
" Close buffer and move back
nmap <leader>wq :bp <BAR> bd #<CR>
" List buffers
nmap <leader>wl :ls<CR>
" Edit VIMRC
nmap <leader>rc :enew <BAR> edit ~/.vimrc<CR>

"======"
" MISC "
"======"

" Map :W to save because I'm slow to release shift.
command! W  write

" Disable arrow keys in insert mode to force more normal mode usage
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>

" Config codefmt
nnoremap <leader>fl :FormatLines<CR>
vnoremap <leader>fl :'<,'>FormatLines<CR>

"====="
" END "
"====="

" Set the theme
colo monokai

