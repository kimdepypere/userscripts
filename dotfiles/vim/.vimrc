
"#################################################################
"### Learning
"#################################################################
map <up> <nop>
map <down> <nop>
map <left> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

"--- Use Texplore as a fileexplorer
map <right> :Texplore<CR>

"#################################################################
"### Automatic reloading + legacy setting
"#################################################################

" Reload vimrc
autocmd! bufwritepost .vimrc source %

"Set nocompatible (better safe then sorry)
set nocompatible

"################################################################# 
"### Load plugin manager
"################################################################# 

" Pathogen
execute pathogen#infect()

"################################################################# 
"### Standard plugins (not language specific)
"################################################################# 

" Nerdtree bind to control-n
map <C-n> :NERDTreeToggle<CR>

" Syntastic plugin
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Airline plugin (let this be visible all the time)
set laststatus=2

" NerdComment
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Tagbar
nmap <F8> :TagbarToggle<CR>

"################################################################# 
"### Productivity enhancment 
"################################################################# 

" Use different escape key 
imap jk <esc> 

" Change leader settings for azerty keyboards 
let mapleader=","
set timeout timeoutlen=1500

"################################################################# 
"### Tabs 
"################################################################# 

" Open all tabs by default
:tab all

" Tab move 
map <F12> :tabn <CR>

" Tab-back
map <F11> :tabp <CR>
 
"#################################################################
"### usability features
"#################################################################

" Always wrap long lines:
set wrap
 
" Indentation additions
filetype indent plugin on
set modeline
set tabstop=4 expandtab shiftwidth=4 softtabstop=4
 
"#################################################################
"### Usability features
"#################################################################

" Mouse support 
set mouse=a

" Autocompletion mode + behave like bash autocomplete
set wildmode=longest:full
set wildmenu

" Search highlighting
set hlsearch
 
" Better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed
set showmode
 
" Set ruler
set ruler
 
" Linenumbers
set nu
map <F6> :set invnumber<CR>
 

"#################################################################
"### Coding
"#################################################################

" Generate todolist"
command Todo noautocmd vimgrep /TODO\|FIXME/j ** | cw

" Auto-indent (refactor)
map <F7> gg=G


"#################################################################
"### GUI 
"#################################################################

" Syntax highlighting on
syntax on
 
"Colorscheme
colorscheme inkpot

"#################################################################
"### Filetype recognition 
"#################################################################

filetype on
filetype plugin on
filetype indent plugin on
 


