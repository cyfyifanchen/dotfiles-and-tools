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
nmap <leader>f :FZF<cr>
nmap <leader>d :bd<cr>
nmap <leader>o o<ESC><cr>
nmap <leader>O O<ESC><cr>
nmap <leader>vl :vertical resize +10<cr>
nmap <leader>vh :vertical resize -10<cr>
nmap <leader>vj :res +10<cr>
nmap <leader>vk :res -10<cr>
nmap <leader>sp :setlocal spell spelllang=en_us<cr>
nmap <leader>sp :setlocal spell!<cr>
nmap <leader>ev :vsp $MYVIMRC<cr>
nmap <leader>et :vsp ~/.tmux.conf<cr>
nmap <leader>ez :vsp ~/.zshrc<cr>
nmap <leader>sv :source $MYVIMRC<cr>
nmap <leader>pi :PluginInstall<cr>
nmap <leader>u :GundoToggle<cr>
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

" General  {{{
" ui
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
"set foldcolumn=0
set foldmethod=indent
set foldnestmax=5
set nofoldenable
set foldlevel=1

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
"set viminfo^=%
" }}}

" Plugins {{{
"set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle.vim
call vundle#begin()
"ui
Plugin 'Yggdroot/indentLine'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'
Plugin 'junegunn/rainbow_parentheses.vim'
Plugin 'mhinz/vim-startify'
Plugin 'antlypls/vim-colors-codeschool'

"languages
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'eslint/eslint'
Plugin 'shutnik/jshint2.vim'
Plugin 'mxw/vim-jsx'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'groenewege/vim-less'
Plugin 'mattn/emmet-vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'othree/html5.vim'
Plugin 'suan/vim-instant-markdown'
Plugin 'plasticboy/vim-markdown'
"Plugin 'scrooloose/syntastic'
Plugin 'benekastah/neomake'
Plugin 'tpope/vim-surround'

"tools
Plugin 'sickill/vim-pasta'
Plugin 'vundlevim/vundle.vim'
Plugin 'gregsexton/MatchTag'
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/gv.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdcommenter'
Plugin 'SirVer/ultisnips'
Plugin 'ervandew/supertab'
Plugin 'gioele/vim-autoswap'
Plugin 'jiangmiao/auto-pairs'
Plugin 'junegunn/vim-easy-align'
Plugin 'godlygeek/tabular'
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
colorscheme Tomorrow-Night-Eighties
try
    colorscheme Tomorrow-Night-Eighties
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
"let g:ctrlp_custom_ignore = {
  "\ 'dir':  '\v[\/](\.(git|hg|node_modules|svn)|\_site)$',
  "\ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
"\}

" search the nearest ancestor that contains .git, .hg, .svn
"let g:ctrlp_working_path_mode = 2
" }}}

" Emmet {{{
let g:user_emmet_expandabbr_key = '<c-y>'
" }}}

" Syntastic {{{
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_javascript_checkers = ['jscs']
"let g:syntastic_html_tidy_exec = 'tidy5'
"let jshint2_read = 1
"let jshint2_save = 1
"let g:syntastic_check_on_open = 1

 "dispaly all errors for mutiple checkers
"let g:syntastic_aggregate_errors = 1



"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_wq = 0

"disable all style messages
"let g:syntastic_quiet_messages = { "type": "style" }
" }}}

" Neomake {{{
autocmd! BufWritePost,BufEnter * Neomake

let g:neomake_javascript_jshint_maker = {
    \ 'args': ['--verbose'],
    \ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
\ }

let g:neomake_typescript_tsc_maker = {
    \ 'args': ['-m', 'commonjs', '--noEmit' ],
    \ 'append_file': 0,
    \ 'errorformat':
        \ '%E%f %#(%l\,%c): error %m,' .
        \ '%E%f %#(%l\,%c): %m,' .
        \ '%Eerror %m,' .
        \ '%C%\s%\+%m'
\ }

" autocmd FileType javascript let g:neomake_javascript_enabled_makers = findfile('.jshintrc', '.;') != '' ? ['jshint'] : ['eslint']
let g:neomake_javascript_enabled_makers = ['eslint']

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

let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']']]

" List of colors that you do not want. ANSI code or #RRGGBB
let g:rainbow#blacklist = [233, 234]

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

" fzf vim {{{

" this is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" default fzf layout
" - down / up / left / right
" - window (nvim only)
let g:fzf_layout = { 'down': '~20%' }

" customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] to customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()
"}}}

" Neocomplete Neosnippet  {{{

"}}}

" Vim-Plug {{{

"}}}

" IndentLine {{{
let g:indentLine_char = '┆'
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

