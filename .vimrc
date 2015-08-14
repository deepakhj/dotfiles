set nocompatible

execute pathogen#infect()
filetype plugin indent on
syntax enable

" --- General settings ---
set autoindent
set backspace=indent,eol,start
set ruler
set showcmd
set showmatch
set incsearch
set hlsearch
set cursorline
set mouse=r

" always uses spaces instead of tab characters
set expandtab

" toggle for dark color scheme
set background=dark   
"colorscheme Tomorrow-Night
colorscheme solarized

" ----- scrooloose/syntastic settings -----
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END

" --- vim-airline options ---
" always show statusbar
set laststatus=2
" if powerline fonts enabled
let g:airline_powerline_fonts = 1
" Show PASTE if in paste mode
let g:airline_detect_paste=1
" Show airline for tabs too
let g:airline#extensions#tabline#enabled = 1
" Required after having changed the colorscheme
hi clear SignColumn
" In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only = 1

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

let mapleader = "\<Space>"
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
nmap <Leader><Leader> V
