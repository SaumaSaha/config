" set color format 256
set t_Co=256
set termguicolors
colorscheme base16-gigavolt

syntax on                        " set syntax highlight on
set nu                           " set line numbers
set encoding=UTF-8
" set cursorline

" Highlighting
set autoread
set incsearch                    " Incremental search. Highlight as you type
set hlsearch                     " Highlight search results once typed
set ignorecase
set smartcase
nohl

syntax enable
filetype indent on

" Backup
set nobackup
set noswapfile 

set autoindent                 " Auto indentation
set expandtab                  " Convert tabs to spaces
set tabstop=2                  " width of a tab
set softtabstop=2              " width of a tab when back_key or tab_key is pressed
set shiftwidth=2               " width of tab on indentation
set smartindent
set backspace=indent,eol,start

" Status
set showcmd
set ruler
set noshowmode

" wrap
set wrap
set linebreak

" Visual display
set title
set cursorline

" Don't update screen during macro and script execution
set lazyredraw

" Folds
set foldmethod=indent
set foldnestmax=3

let mapleader=","

" Custom mappings
noremap <leader><space> :set relativenumber!cr>
noremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
inoremap <tab> <C-p>
inoremap jk <esc>

" copy line down
inoremap <leader>cd <esc>yyp

" Copy to ClipBoard
vnoremap <c-y> "*y

" save in insert mode
inoremap <c-s> <esc>:w<cr>

" quit shorthand
nnoremap <leader>q :q!<cr>

" Capitalize a word
nnoremap <c-u> bgUw

" change buffer
nnoremap <c-n> :bn<cr>

" writing a file
nnoremap <leader>w :w<cr>
inoremap <C-v> <C-r>

" Auto Complete Quotes and Brackets
inoremap '<tab> ''<Left>
inoremap "<tab> ""<Left>
inoremap [<tab> []<Left>
inoremap (<tab> ()<Left>
inoremap {<tab> {}<Left>

" Templates
inoremap f<tab> <esc>viwdiconst <esc>pa = function() {<cr>};<Up><esc>4w<Right>i
inoremap for<tab> for() {<cr>}<up><esc>wa
inoremap if<tab> if() {<cr>}<up><esc>wa
inoremap while<tab> while() {<cr>}<up><esc>wa

" Move line up or down
inoremap <C-j> <esc>:m+1<cr><esc>i
inoremap <C-k> <esc>:m-2<cr><esc>i
nnoremap <C-j> :m+1<cr>
nnoremap <C-k> :m-2<cr>

" Abbreviations
iabbrev ss@ sauma.saha@thoughtworks.com

" Custom movement
nnoremap H ^
nnoremap L $

" Selecting block by block
nnoremap <C-s> ViB
vnoremap <C-s> ViB

" Auto indentation
augroup AutoIndent
  autocmd!
  autocmd BufWritePre *.js :normal gg=G``
  autocmd BufWritePre *.sh :normal gg=G``
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

set wildmenu                      " display all matching files when tab complete

" Mappings for nerd tree
nnoremap <leader>f :NERDTreeToggle<cr>

" Themes configuration
set background=dark

" Airline modification
let g:airline_theme='murmur'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1

" Nerd Tree configuration 
let NERDTreeMinimalUI=1           " Remove nerd tree help icon
let g:NERDTreeFileExtensionHighlightFullName=1
let g:NERDTreeExactMatchHighlightFullName=1
let g:NERDTreePatternMatchHighlightFullName=1
let g:NERDTreeHighlightFolders=1 "  enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName=1 "  highlights the folder name

hi Special term=bold ctermfg=8 guifg=#a1d2e6

if exists(" g:loaded_webdevicons")
  call webdevicons#refresh()
endif
