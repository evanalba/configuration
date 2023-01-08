" Evan Alba Vimrc
" Author: Evan Alba

" Basics
set ai
set nocompatible
set encoding=utf-8
set number 
set title
syntax off

" Set 256 colors in terminal
set t_Co=256

" Clear any existing highlights and apply these highlight colors
hi clear
hi LineNr ctermfg=46
hi Normal ctermfg=231

" Show the line and column number of the cursor position
set ruler

" Use the clipboard as the default register
set clipboard+=unnamed

