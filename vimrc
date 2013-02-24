set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

filetype plugin on

set nocompatible

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'ack.vim'
Bundle 'AutoComplPop'
Bundle 'buftabs'
Bundle 'ctrlp.vim'
Bundle 'EasyMotion'
Bundle 'fugitive.vim'
Bundle 'Gundo'
Bundle 'vim-less'
Bundle 'loremipsum'
Bundle 'matchit.zip'
Bundle 'snipMate'
Bundle 'sparkup'
Bundle 'surround.vim'
Bundle 'Tagbar'
Bundle 'tComment'
Bundle 'vim-flake8'
Bundle 'YankRing.vim'

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

" CTRLP Configuration
nmap <C-L> :CtrlPTag<CR>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_open_new_file = 't'
let g:ctrlp_open_multiple_files = 't'
let g:ctrlp_max_height = '20'
let g:ctrlp_us_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript',
                         \ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']

" Tabmove bindings
nmap <C-Up> :tabmove +1<CR>
nmap <C-Down> :tabmove -1<CR>

" Easymotion configuration
let g:EasyMotion_leader_key = '\'

" Flake 8 Configuration
let g:flake8_max_line_length = 120

" Gundo Configuration
nnoremap <F5> :GundoToggle<CR>

" Moving on buffers
noremap <C-left> :bprev<CR>
noremap <C-right> :bnext<CR>

" Tagbar keybinding
map <F8> <ESC>:TagbarToggle<CR>

" YankRing keybinding
nnoremap <silent> <F10> :YRShow<CR>
