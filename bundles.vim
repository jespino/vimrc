" Bundels declaration
Bundle 'ack.vim'
Bundle 'AutoComplPop'
Bundle 'ctrlp.vim'
Bundle 'EasyMotion'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-fireplace'
Bundle 'airblade/vim-gitgutter'
Bundle 'Gundo'
Bundle 'vim-less'
Bundle 'loremipsum'
Bundle 'matchit.zip'
Bundle 'snipMate'
Bundle 'tristen/vim-sparkup'
Bundle 'surround.vim'
Bundle 'Tagbar'
Bundle 'tComment'
Bundle 'vim-flake8'
Bundle 'wokmarks.vim'
Bundle 'rebtags'
Bundle 'kchmck/vim-coffee-script'
Bundle 'atourino/jinja.vim'
Bundle 'bling/vim-airline'
Bundle 'rdolgushin/groovy.vim'
Bundle 'hlint'
Bundle 'taurenchieftain/vim-vala'
Bundle 'oplatek/Conque-Shell'
Bundle 'linediff.vim'
Bundle 'digitaltoad/vim-jade'

" Bundels Configuration

" CTRLP Configuration
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_open_new_file = 't'
let g:ctrlp_open_multiple_files = 't'
let g:ctrlp_max_depth = 40
let g:ctrlp_max_height = '20'
let g:ctrlp_us_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript',
                         \ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']
" Easymotion configuration
let g:EasyMotion_leader_key = '\'

" Flake 8 Configuration
let g:flake8_max_line_length = 120

" Airline fonts
let g:airline_powerline_fonts = 1

" Vim-Coffee-Script
autocmd BufNewFile,BufRead *.coffee set filetype=coffee

" Jinja
autocmd BufNewFile,BufRead *.jinja set filetype=jinja
