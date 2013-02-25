set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

filetype plugin on

set nocompatible

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

source ~/.vim/bundles.vim

syntax on
filetype plugin indent on

autocmd BufRead *.vala,*.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
au BufRead,BufNewFile *.vala,*.vapi setfiletype vala

" Less syntax highlight
au BufNewFile,BufRead *.less set filetype=less

" Remove last spaces
au BufWritePre *.py :%s/\s\+$//e

" Highlight last spaces
highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave,BufWinEnter * match ExtraWhitespace /\s\+$/
au ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

" Abbreviations
abbreviate _pdb import pdb; pdb.set_trace()
abbreviate _ipdb import ipdb; ipdb.set_trace()

" Spell cheking enabled by default
map <F6> <Esc>:setlocal spell spelllang=es<CR>
