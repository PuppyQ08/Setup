"-----------------------------------------------------------------------------------------"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'Valloric/YouCompleteMe'

Plugin 'tpope/vim-fugitive'

call vundle#end()            " required
"---------------------------------------------------- vundle middle line----"
filetype plugin indent on    " required
filetype plugin on
"----------------------------vim markdown
" let g:vim_markdown_folding_level = 5 
" -------------------------

"let g:indentLine_setColors = 0
"let g:indentLine_char = '|'
let g:vim_markdown_folding_disabled = 1

"--------------syntax related----------------------------------------------"
syntax on
colorscheme desert

"to change tab width
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
"or you can set up autoindent by: set no/autoindent
set autoindent
setlocal indentexpr=
"you can set your own custom command by: command! urcammand :wq
set number
let &t_SI .= "\e[5 q"
let &t_EI .= "\e[2 q"
  " 1 or 0 -> blinking block
  " 3 -> blinking underscore
  " Recent versions of xterm (282 or above) also support
  " 5 -> blinking vertical bar
  " 6 -> solid vertical bar 
"==============================================================================="
"cmd related
autocmd FileType python nnoremap <buffer> <F5> : exec ':w <bar> !python3' shellescape(@%,1)<cr>
map <silent> <F9> :w <bar> :!open %<CR>
