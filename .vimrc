" Keys {{{
let mapleader = " "
let g:mapleader = " "

inoremap jj <ESC>
inoremap jk <ESC>
inoremap kj <ESC>

nmap <leader>nt :NERDTree<cr>
nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>
nmap <leader>l :bnext<cr>
nmap <leader>h :bprevious<cr>
nmap <leader>p :CtrlP ~/docs/<cr>
nmap <leader>g :Gstatus<cr>
nmap <leader>gc :Gcommit<cr>
nmap <leader>d :bd<cr>
nmap <leader>o o<ESC><cr>
nmap <leader>O O<ESC><cr>
nmap <leader>vl :vertical resize +10<cr>
nmap <leader>vh :vertical resize -10<cr>
nmap <leader>vj :res +10<cr>
nmap <leader>vk :res -10<cr>
nmap <leader>sp :setlocal spell spelllang=en_us<cr>
nmap <leader>sp :setlocal spell!<cr>
nmap <leader>ev :vsp $MYVIMRC<CR>
nmap <leader>et :vsp ~/.tmux.conf<CR>
nmap <leader>ez :vsp ~/.zshrc<CR>
nmap <leader>sv :source $MYVIMRC<CR>
nmap <leader>pi :PluginInstall<CR>
nmap <leader>u :GundoToggle<CR>
nmap <leader><leader> <c-w>w
nmap <leader><leader> <c-^>

nnoremap j gj
nnoremap k gk
nnoremap 0 ^
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-e> 3<C-e>
nnoremap <C-q> 3<C-y>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap Q <Nop>
nnoremap U <Nop>
nnoremap J <Nop>
nnoremap K <Nop>

" conflicted <leader>h, overwrite GitGutter default
nnoremap <Leader>av <Plug>GitGutterPreviewHunk
nnoremap <Leader>au <Plug>GitGutterRevertHunk
nnoremap <Leader>aa <Plug>GitGutterStageHunk
"}}}

" General Settings {{{
" UI
set ruler
set number
set hid
set showcmd
set cmdheight=1
set showmatch
set wrap
set autoread
set wildmenu

" line break
set linebreak
set textwidth=500

" blink speed
set mat=1

" proformence
set lazyredraw
set ttyfast

" searching
set ignorecase
set smartcase
set hlsearch
set incsearch

" indent
set autoindent
set smartindent

" regex
set magic

" clipboard
set clipboard=unnamed

" errorbells
set noerrorbells
set visualbell
set t_vb=
set tm=500

" folding
set foldcolumn=0
"set foldmethod=indent
"set foldnestmax=10
"set nofoldenable
"set foldlevel=1

" backups, undos, swaps
set directory=~/.vim/tmp/
set backupdir=~/.vim/tmp/
set history=1000
set undolevels=1000
set undoreload=10000
set noundofile
set undodir=~/.vim/tmp/undo/
set nobackup
set nowb
set noswapfile

" tabs
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

" ignores
set wildignore+=*.a,*.0
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.mov,*.pdf,*.psd,*.ai
set wildignore+=*.ppt,*.pptx,*.doc,*.docx,*.xls,*.xlsx
set wildignore=*.o,*~,*.pyc

" remember info about open buffers on close
set viminfo^=%
" }}}

" Plugins {{{
"set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle.vim
call vundle#begin()
Plugin 'vundlevim/vundle.vim'
Plugin 'mhinz/vim-startify'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'gioele/vim-autoswap'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/syntastic'
Plugin 'benekastah/neomake'
Plugin 'eslint/eslint'
Plugin 'shutnik/jshint2.vim'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
Plugin 'airblade/vim-gitgutter'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'scrooloose/nerdcommenter'
Plugin 'SirVer/ultisnips'
Plugin 'ervandew/supertab'
Plugin 'gregsexton/MatchTag'
"Plugin 'junegunn/vim-easy-align'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'mxw/vim-jsx'
Plugin 'godlygeek/tabular'
Plugin 'suan/vim-instant-markdown'
Plugin 'plasticboy/vim-markdown'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'othree/html5.vim'
Plugin 'tpope/vim-repeat'
Plugin 'svermeulen/vim-easyclip'
Plugin 'sjl/gundo.vim'
Plugin 'vim-scripts/Rename'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
call vundle#end()
filetype plugin indent on
" }}}

" Colors, Scheme, Coding and Fonts {{{
syntax enable
colorscheme Tomorrow-Night
try
    colorscheme Tomorrow-Night
catch
endtry
set background=dark
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    "set t_Co=256
    set guitablabel=%M\ %t
endif
"set encoding=utf8
set ffs=unix,dos,mac
" }}}

" Airline {{{
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
" }}}

" Startify {{{
let g:startify_bookmarks = [
            \ { 'v': '~/.vimrc' },
            \ { 't': '~/.tmux.conf' },
            \ { 'z': '~/.zshrc' },
            \ ]

let g:startify_custom_header =
          \ map(split(system('fortune | cowsay'), '\n'), '"   ". v:val') + ['']

hi StartifyHeader  ctermfg=114

" disable nerdtree and ctlrp split
autocmd User Startified setlocal buftype=
let g:ctrlp_reuse_window = 'startify'

"let g:startify_custom_header = s:filter_header(['a', 'bb', 'ccc'])
" }}}

" CtrlP {{{
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|node_modules|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}

" search the nearest ancestor that contains .git, .hg, .svn
let g:ctrlp_working_path_mode = 2
" }}}

" Emmet {{{
let g:user_emmet_expandabbr_key = '<c-y>'
" }}}

" Syntastic {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_javascript_checkers = ['jscs']
let g:syntastic_html_tidy_exec = 'tidy5'
let jshint2_read = 1
let jshint2_save = 1
let g:syntastic_check_on_open = 1

" dispaly all errors for mutiple checkers
let g:syntastic_aggregate_errors = 1



"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_wq = 0

"disable all style messages
"let g:syntastic_quiet_messages = { "type": "style" }
" }}}

" Neomake {{{
autocmd! BufWritePost,BufEnter * Neomake

let g:neomake_open_list = 2

let g:neomake_javascript_jshint_maker = {
    \ 'args': ['--verbose'],
    \ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
    \ }
let g:neomake_javascript_enabled_makers = ['jshint']
"}}}

" Snippets {{{
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsEditSplit="vertical"

let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" }}}

" Abbreviations {{{
iabbrev teh the
iabbrev waht what
iabbrev aray array
iabbrev seperate separate
iabbrev fuction function
iabbrev fucntion function
iabbrev fnction function
iabbrev functon function
iabbrev funtion function
iabbrev funciont function
iabbrev fnuction function
iabbrev consloe console
iabbrev tempalte template
iabbrev fitler filter
iabbrev fonrt font
iabbrev sytle style
iabbrev dvi dvi
iabbrev calss class
" }}}

" React and JSX {{{
let g:jsx_ext_required = 0
" }}}

" Autocmd {{{
" disbale format comments options
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" }}}

" Rainbow Parenthese {{{
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
"let g:rbpt_max = 15
"let g:bold_parenttheses = 1
"}}}

" Markdown {{{
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_no_default_key_mappings = 1
let g:instant_markdown_autostart = 0
"}}}

" Gundo {{{
let g:gundo_width = 80
let g:gundo_preview_height = 30
let g:gundo_right = 1
" }}}

" You Complete Me {{{
autocmd FileType c nnoremap <buffer> <silent> <C-]> :YcmCompleter GoTo<cr>
"}}}

" Neovim true color {{{
"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"}}}

" fzf {{{

"}}}

" Neocomplete Neosnippet  {{{

"}}}

" Vim-Plug {{{

"}}}

" Helpers {{{

" remove trailing white sapce on save
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

" return to last edit position when opening files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

"}}}

" vim:foldmethod=marker:foldlevel=0

