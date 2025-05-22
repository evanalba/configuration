" Evan Alba Vimrc
" Author: Evan Alba

" UNIX Tradition: A text file, consists of a series of lines, each of which
" ends with a newline character (\n). A file that is not empty and does not
" end with a newline is therefore not a text file.
" Some tools that are supposed to operate on text files may not work well with
" files that do not end with a newline.

" ALSO: POSIX says so:
" https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/V1_chap03.html
" #tag_03_205

" Basics
set ai
set nocompatible
set encoding=utf-8
set number
set title
syntax on

set background=light
hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='evanalba'
" Set 256 xterm colors in terminal
set t_Co=256

" BACKUP colorscheme
colorscheme morning

" Clear any existing highlights and apply these highlight colors
" hi clear
" hi LineNr ctermfg=46
" hi Normal ctermfg=231
"hi ColorColumn ctermbg=red guibg=red

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

" This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>

" Insert spaces instead of tabs when you press the Tab key or when
" auto-indentation occurs.
set expandtab

" Specifies that a tab character should be treated as equivalent to 2 spaces.
set tabstop=2

" Determines the number of spaces used for auto-indentation.
set shiftwidth=2

" When you press the Tab key, Vim will insert the appropriate number of spaces
" to maintain consistent indentation.
set softtabstop=2

" NOTE: Make sure to put before you can modify the settings on specific
" filetypes.
filetype plugin indent on

autocmd FileType Makefile setlocal tabstop=8 softtabstop=8 shiftwidth=8 expandtab


""""" Evan Alba Custom Colorscheme
" Inspired by the colors of Star Trek: The Original Series (TOS).

" major

"hi Comment    guisp=NONE guifg=#00afff guibg=#ffffff ctermfg=39 ctermbg=231
"hi Constant   guisp=NONE guifg=#000000 guibg=#ffffff ctermfg=16 ctermbg=231
"hi Error      guisp=NONE guifg=#ff0000 guibg=#ffffff ctermfg=196 ctermbg=231
"hi Identifier guisp=NONE guifg=#000000 guibg=#ffffff ctermfg=16 ctermbg=231
"hi Ignore     guisp=NONE guifg=#d7af87 guibg=#ffffff ctermfg=180 ctermbg=231
"hi Normal     guisp=NONE guifg=#000000 guibg=#ffffff ctermfg=16 ctermbg=231
"hi PreProc    guisp=NONE guifg=#8700ff guibg=#ffffff ctermfg=93  ctermbg=231
"hi Special    guisp=NONE guifg=#00afaf guibg=#ffffff ctermfg=37  ctermbg=231
"hi Statement  guisp=NONE guifg=#000000 guibg=#ffffff ctermfg=16  ctermbg=231
"hi Todo       guisp=NONE guifg=#ff0000 guibg=#ffff00 ctermfg=196 ctermbg=226
"hi Type       guisp=NONE guifg=#ff8700 guibg=#ffffff ctermfg=208 ctermbg=231
"hi Underlined guisp=NONE guifg=#0000ff guibg=#ffffff ctermfg=21  ctermbg=231

" minor

"hi Boolean        guisp=NONE guifg=#000000 guibg=#ffffff ctermfg=16 ctermbg=231
"hi Character      guisp=NONE guifg=#000000 guibg=#ffffff ctermfg=16 ctermbg=231
"hi Conditional    guisp=NONE guifg=#000000 guibg=#ffffff ctermfg=16 ctermbg=231
"hi Debug          guisp=NONE guifg=#000000 guibg=#ffffff ctermfg=16 ctermbg=231
"hi Define         guisp=NONE guifg=#000000 guibg=#ffffff ctermfg=16 ctermbg=231
"hi Delimiter      guisp=NONE guifg=#000000 guibg=#ffffff ctermfg=16 ctermbg=231
"hi Exception      guisp=NONE guifg=#000000 guibg=#ffffff ctermfg=16 ctermbg=231
"hi Float          guisp=NONE guifg=#000000 guibg=#ffffff ctermfg=16 ctermbg=231
"hi Function       guisp=NONE guifg=#000000 guibg=#ffffff ctermfg=16 ctermbg=231
"hi Include        guisp=NONE guifg=#000000 guibg=#ffffff ctermfg=16 ctermbg=231
"hi Keyword        guisp=NONE guifg=#000000 guibg=#ffffff ctermfg=16 ctermbg=231
"hi Label          guisp=NONE guifg=#000000 guibg=#ffffff ctermfg=16 ctermbg=231
""hi Macro          guisp=NONE guifg=#00afaf guibg=#ffffff ctermfg=37  ctermbg=231
"hi Number         guisp=NONE guifg=#000000 guibg=#ffffff ctermfg=16 ctermbg=231
"hi Operator       guisp=NONE guifg=#000000 guibg=#ffffff ctermfg=16 ctermbg=231
"hi PreCondit      guisp=NONE guifg=#000000 guibg=#ffffff ctermfg=16 ctermbg=231
"hi Repeat         guisp=NONE guifg=#000000 guibg=#ffffff ctermfg=16 ctermbg=231
"hi SpecialChar    guisp=NONE guifg=#000000 guibg=#ffffff ctermfg=16 ctermbg=231
"hi SpecialComment guisp=NONE guifg=#000000 guibg=#ffffff ctermfg=16 ctermbg=231
"hi StorageClass   guisp=NONE guifg=#000000 guibg=#ffffff ctermfg=16 ctermbg=231
""hi String         guisp=NONE guifg=#ff8700 guibg=#ffffff ctermfg=208 ctermbg=231
""hi Structure      guisp=NONE guifg=#005f5f guibg=#ffffff ctermfg=23  ctermbg=231
"hi Tag            guisp=NONE guifg=#000000 guibg=#ffffff ctermfg=16 ctermbg=231
"hi Typedef        guisp=NONE guifg=#000000 guibg=#ffffff ctermfg=16 ctermbg=231

" misc

hi ColorColumn guisp=NONE guifg=#ffffff guibg=#ff0000 ctermfg=231 ctermbg=196
hi Cursor guisp=NONE guifg=#00ff00 guibg=#1c1c1c ctermfg=46  ctermbg=234
hi LineNr guisp=NONE guifg=#ffffff guibg=#000080 ctermfg=231 ctermbg=18
