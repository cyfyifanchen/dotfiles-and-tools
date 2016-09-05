" Keys {{{
let mapleader = " "
let g:mapleader = " "

inoremap jj <ESC>
inoremap jk <ESC>
cnoremap jk <ESC>

nmap <leader>w :w!<cr>
nmap <leader>q :q!<cr>
nmap <leader>l :bnext<cr>
nmap <leader>h :bprevious<cr>
nmap <leader>p :CtrlP ~/docs/<cr>
nmap <leader>g :Gstatus<cr>
nmap <leader>gc :Gcommit<cr>
nmap <leader>f :FZF<cr>
nmap <leader>d :bd<cr>
nmap <leader>o o<ESC>
nmap <leader>O O<ESC>
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
nmap <leader>pi :PlugInstall<cr>
nmap <leader>u :GundoToggle<cr>
nmap <leader>n :NERDTreeToggle<cr>
nmap <leader>ew :StripWhitespace<cr>
nmap <leader>t :IndentLinesToggle<cr>
nmap <leader>a :Ag<cr>
"nmap <leader>gco :Gread<cr>
"nmap <leader>grh :Gwrite<cr>
nmap <leader><leader> <c-^>
nmap <leader>p :set nopaste<cr>
nmap ,cd :cd %:p:h<cr>

nnoremap j gj
nnoremap k gk
nnoremap 0 ^
nnoremap K i<cr><esc>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-e> 5<C-e>
nnoremap <C-q> 5<C-y>
nnoremap <C-y> 5<C-y>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap Q <Nop>
nnoremap U <Nop>
nnoremap <leader>d :bp<cr>:bd #<cr>
"nnoremap J <Nop>
"nnoremap K <Nop>

" gitgutter
nnoremap ]h <Plug>GitGutterNextHunk
nnoremap [h <Plug>GitGutterPrevHunk
nnoremap <Leader>aar <Plug>GitGutterUndoHunk
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
set scrolloff=3
set noesckeys

"set cursorline
" set autochdir

autocmd ColorScheme * hi VertSplit cterm=NONE ctermbg=NONE ctermfg=Gray

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

" clipboard, yank, paste
set clipboard=unnamed
set nopaste
set pastetoggle=<F2>

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

" cursorline in active buffer
"au BufEnter * setlocal cursorline
"au BufLeave * setlocal nocursorline

" remember info about open buffers on close
"set viminfo^=%

" }}}

" Plugins {{{
call plug#begin('~/.vim/plugged')

"UI
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
"Plug 'junegunn/rainbow_parentheses.vim'
"Plug 'luochen1990/rainbow'
Plug 'kien/rainbow_parentheses.vim'
Plug 'mhinz/vim-startify'
"Plug 'timakro/vim-searchant'
Plug 'rakr/vim-two-firewatch'

"languages
Plug 'othree/javascript-libraries-syntax.vim', { 'for': 'javascript' }
Plug 'pangloss/vim-javascript',                { 'for': 'javascript' }
Plug 'jelera/vim-javascript-syntax',           { 'for': 'javascript' }
Plug 'othree/yajs.vim',                        { 'for': 'javascript' }
Plug 'mxw/vim-jsx',                            { 'for': 'jsx' }
Plug 'hail2u/vim-css3-syntax',                 { 'for': [ 'css', 'less', 'scss' ] }
Plug 'groenewege/vim-less',                    { 'for': 'less' }
Plug 'mattn/emmet-vim',                        { 'for': [ 'html', 'handlebars'] }
Plug 'othree/html5.vim',                       { 'for': 'html' }
Plug 'suan/vim-instant-markdown',              { 'for': 'markdown' }
Plug 'plasticboy/vim-markdown',                { 'for': 'markdown' }
Plug 'fatih/vim-go',                           { 'for': 'go' }
"plug 'klen/python-mode',                       { 'for': 'python' }
Plug 'gregsexton/MatchTag',
Plug 'mustache/vim-mustache-handlebars'
Plug 'tpope/vim-surround'
if has('nvim')
  Plug 'benekastah/neomake'
else
  Plug 'scrooloose/syntastic',                 { 'on': 'SyntasticCheck' }
endif

"tools
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'jceb/vim-orgmode'
Plug 'rking/ag.vim'
Plug 'sickill/vim-pasta'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'scrooloose/nerdtree',                    { 'on':  'NERDTreeToggle' }
Plug 'sjl/gundo.vim',                          { 'on': 'GundoToggle' }
"Plug 'Valloric/YouCompleteMe',                 { 'do': './install.py' }
function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
Plug 'Shougo/deoplete.nvim',                   { 'do': function('DoRemote') }
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'SirVer/ultisnips'
Plug 'ervandew/supertab'
Plug 'gioele/vim-autoswap'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-repeat'
Plug 'svermeulen/vim-easyclip'
Plug 'vim-scripts/Rename'
Plug 'junegunn/fzf',                           { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ntpeters/vim-better-whitespace',         { 'on': 'StripWhitespace' }
call plug#end()
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

" NEEDTree {{{
"autocmd FileType nerdtree noremap <buffer> <leader>q <nop>
autocmd FileType nerdtree noremap <buffer> <leader>l <nop>
autocmd FileType nerdtree noremap <buffer> <leader>h <nop>
autocmd FileType nerdtree noremap <buffer> <leader>f <nop>
" disable nerdtree and ctlrp split
autocmd User Startified setlocal buftype=
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
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

let g:ctrlp_reuse_window = 'startify'

" }}}

" Emmet {{{
let g:user_emmet_expandabbr_key = '<c-y>'
"imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}
" }}}

" Syntastic {{{

if !has('nvim')
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
endif

" }}}

" Neomake {{{

"if has('nvim')
  "let g:neomake_open_list = 2
  "let g:neomake_javascript_enabled_makers = ['eslint']
  "autocmd! BufWritePost,BufEnter * Neomake
"endif

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

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
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
"autocmd FileType c nnoremap <buffer> <silent> <C-]> :YcmCompleter GoTo<cr>
"}}}

" Deoplete {{{
let g:deoplete#enable_at_startup = 1
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
let g:fzf_layout = { 'down': '~40%' }

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

" IndentLine {{{
let g:indentLine_char = '┆'
"}}}

" Gitgutter {{{
let g:gitgutter_map_keys = 0
"}}}

" Notes {{{
:let g:notes_directories = ['~/Google Drive/books/notes']
":let g:notes_suffix = '.txt'
" }}}

" Ag {{{
" start searching from project root
let g:ag_working_path_mode="r"
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
iabbrev fucntion function
iabbrev functino function
iabbrev consoel console
iabbrev consloe console
iabbrev tempalte template
iabbrev fitler filter
iabbrev fonrt font
iabbrev sytle style
iabbrev dvi div
iabbrev calss class
iabbrev classNmae className
iabbrev classnmae className
iabbrev classname className
iabbrev componnet component
" }}}

" vim:foldmethod=marker:foldlevel=0
