" Spell cheking enabled by default
map <F6> <Esc>:setlocal spell spelllang=es<CR>

" CtrlP binding for ctags
nmap <leader><C-P> :CtrlPTag<CR>

" Tabmove bindings
nmap <C-Up> :tabmove +1<CR>
nmap <C-Down> :tabmove -1<CR>

" Gundo Configuration
nnoremap <leader>u :GundoToggle<CR>

" Moving on buffers
noremap <C-left> :bprev<CR>
noremap <C-right> :bnext<CR>

" Tagbar keybinding
map <F8> <ESC>:TagbarToggle<CR>

" RebTags keybinding
map <F9> <ESC>:RebuildTags<CR>

" Disable the current highlighted search
nnoremap <leader><space> :nohlsearch<CR>

" Highlight the last inserted text
nmap gV `[v`]

" Edit my vimrc
nnoremap <leader>ev :vsp ~/.vimrc<CR>
nnoremap <leader>sv :source ~/.vimrc<CR>
