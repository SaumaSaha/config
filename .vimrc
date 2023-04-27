" Syntax and numbered line and highlight
syntax on
set nu
set incsearch
set hlsearch
nohl

" Autoread on
set autoread

" Indentation
filetype indent on " turns on autoindent based on file type
set autoindent " Auto indentation
set expandtab " convert tabs to spaces
set tabstop=2 " width of tabs for a \t char read from a file
set softtabstop=2 " width of tab when tab or backspace is pressed
set shiftwidth=2 " width of tab on indentation
set backspace=indent,eol,start

" Wrap
set wrap

" Status
set ruler
set showcmd
set noshowmode

" Backup
set nobackup
set noswapfile

" Title
set title

" Fold
set foldmethod=indent
set foldnestmax=3

" Mouse
" set mouse=a

" Leader
let mapleader=','

" Custom mappings
nnoremap <leader><space> :set relativenumber!<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" Auto Complete word
inoremap <tab> <C-p>

" Auto Complete Quotes and Brackets
inoremap "<tab> ""<Left>
inoremap [<tab> []<Left>
inoremap (<tab> ()<Left>
inoremap {<tab> {}<Left>
inoremap '<tab> ''<Left>

" Get Templates
inoremap f<tab> function() {<cr><cr>}<Up><Up><esc>wwwwa
inoremap for<tab> for() {<cr>}<up><esc>wa
inoremap if<tab> if() {<cr>}<up><esc>wa
inoremap while<tab> while() {<cr>}<up><esc>wa

" Save from Insert Mode
inoremap <C-s> <esc>:w<cr>

" Move line up or down
inoremap <C-j> <esc>:m+1<cr><esc>i
inoremap <C-k> <esc>:m-2<cr><esc>i
nnoremap <C-j> :m+1<cr>
nnoremap <C-k> :m-2<cr>

" Go to normal mode from insert mode
inoremap jk <esc>

" Uppercase and Lowercase a word
inoremap <C-a> <esc>gUiwi
inoremap <C-l> <esc>guiwi

" Abbreviations
iabbrev ss@ sauma.saha@thoughtworks.com

" Switching buffer
nnoremap <leader>nb :bnext<cr>
nnoremap <leader>np :bprevious<cr>

" Source
nnoremap <leader>sv :source $MYVIMRC<cr>

" Quoting a word
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel

" Start of line
nnoremap H ^
nnoremap L $

" Writing a file
nnoremap <leader>w :w<cr>

" Quit a file
nnoremap <leader>q :q!<cr>

" Coping a line
nnoremap <leader>cd yyp

" Coping to system clipboard
vnoremap <C-y> "*y

" Selecting block by block
nnoremap <C-s> ViB
vnoremap <C-s> ViB

" Auto indentation
augroup AutoIndent
  autocmd!
  autocmd BufWritePre * :normal gg=G``
augroup END

augroup Comment
  autocmd!
  " Comment in different filetypes
  autocmd FileType javascript nnoremap <leader>c I// <esc>
  autocmd FileType sh,bash nnoremap <leader>c I# <esc>

  " Uncomment in different filetypes
  autocmd FileType javascript nnoremap <leader>uc ^xxx
  autocmd FileType sh,bash nnoremap <leader>uc ^xx

  " Comment Block
  autocmd FileType javascript vnoremap <leader>c $mmI<esc>O/*<esc>`mo*/<esc>

  " Uncomment Block
  autocmd FileType javascript nnoremap <leader>bu ?\/\*<cr>dd/\*\/<cr>dd
augroup END

" Vimscript file settings ---------------------------- {{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" Color
colo OceanicNext

nnoremap <leader>f :NERDTree<cr> 

let g:airline_theme = 'murmur'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

let g:webdevicons_enable = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_conceal_nerdtree_brackets = 1

if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif
