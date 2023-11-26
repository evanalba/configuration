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
set colorcolumn=80

" Use the clipboard as the default register
set clipboard+=unnamed

" Line numbering
set number relativenumber

" Highlight trailing whitespaces
highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$/

" Unix Keyboard Shortcuts
" ^U -> Delete from cursor to start of line.
" ^W -> Delete word before the cursor.
" ^H -> Delete character before the cursor.
" ^A -> Move cursor to start of the line. (Not in included in Vim)
" ^E -> Move cursor to end of the line. (Not in included in Vim)
" (In Unix ‘^’ means the Control key.)
imap <C-e> <esc>$i<right>
imap <C-a> <esc>0i
map <C-e> <esc>$<right>
map <C-a> <esc>0
