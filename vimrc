set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

filetype plugin on

set nocompatible
set t_Co=256
set background=dark
set lazyredraw
set hlsearch
let mapleader = " "

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

syntax on
filetype plugin indent on

autocmd BufRead *.vala,*.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
au BufRead,BufNewFile *.vala,*.vapi setfiletype vala

" Less syntax highlight
au BufNewFile,BufRead *.less set filetype=less

" Cobra syntax highlight
au BufNewFile,BufRead *.cobra set filetype=python

" Gradle syntax is groovy
au BufNewFile,BufRead *.gradle set filetype=groovy

" Remove last spaces
au BufWritePre *.py :%s/\s\+$//e

" Highlight last spaces
highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave,BufWinEnter * match ExtraWhitespace /\s\+$/
au ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

source ~/.vim/bundles.vim
source ~/.vim/abbreviations.vim
source ~/.vim/bindings.vim
