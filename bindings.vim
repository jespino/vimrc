" Spell cheking enabled by default
map <F6> <Esc>:setlocal spell spelllang=es<CR>

" CtrlP binding for ctags
nmap <C-L> :CtrlPTag<CR>

" Tabmove bindings
nmap <C-Up> :tabmove +1<CR>
nmap <C-Down> :tabmove -1<CR>

" Gundo Configuration
nnoremap <F5> :GundoToggle<CR>

" Moving on buffers
noremap <C-left> :bprev<CR>
noremap <C-right> :bnext<CR>

" Tagbar keybinding
map <F8> <ESC>:TagbarToggle<CR>

" RebTags keybinding
map <F9> <ESC>:RebuildTags<CR>
