"        ________ ++     ________
"       /VVVVVVVV\++++  /VVVVVVVV\
"       \VVVVVVVV/++++++\VVVVVVVV/
"        |VVVVVV|++++++++/VVVVV/'
"        |VVVVVV|++++++/VVVVV/'
"       +|VVVVVV|++++/VVVVV/'+
"     +++|VVVVVV|++/VVVVV/'+++++
"   +++++|VVVVVV|/VVVVV/'+++++++++
"     +++|VVVVVVVVVVV/'+++++++++
"       +|VVVVVVVVV/'+++++++++
"        |VVVVVVV/'+++++++++
"        |VVVVV/'+++++++++
"        |VVV/'+++++++++
"        'V/'   ++++++
"                 ++
"
" Vundle Plugin Manager
set nocompatible              " be iMproved, required
filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Keep Plugin commands between vundle#begin/end.
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" A file-type sensible comments for Vim.
Plugin 'tomtom/tcomment_vim'

" A plugin to display the git options
Plugin 'tpope/vim-fugitive'

" A code-completion engine for Vim
" Plugin 'Valloric/YouCompleteMe'
" let g:ycm_autoclose_preview_window_after_completion = 1
" let g:ycm_global_ycm_extra_conf ='~/.ycm_extra_conf.py'
let g:loaded_youcompleteme = 1

" a code-completion engine for c/c++
"Plugin 'Rip-Rip/clang_complete'
"let g:clang_user_options='|| exit 0'

" A plugin to auto close brackets
Plugin 'jiangmiao/auto-pairs'

" A plugin to auto complete based in cache of words in buffer.
Plugin 'Shougo/neocomplete.vim'
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1

" A plugin to see the colors directly in vim
Plugin 'gorodinskiy/vim-coloresque'

" Lean & mean status/tabline for vim that's light as air.
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'powerline/powerline'

" A pack of colorschemes for vim.
Plugin 'flazz/vim-colorschemes'

" This plugin causes all trailing whitespace to be highlighted in red.
Plugin 'bronson/vim-trailing-whitespace'

" A plugin that provides support for writing LaTeX documents.
Plugin 'lervag/vimtex'
" A simple, easy-to-use Vim alignment plugin.
"	Plugin 'junegunn/vim-easy-align'

" Additional vim c++ syntax highlighting.
Plugin 'octol/vim-cpp-enhanced-highlight'

" Syntax checking plugin for Vim.
Plugin 'scrooloose/syntastic'

" Permit to tab-complete words while typing in a search.
Plugin 'vim-scripts/SearchComplete'

" The NERD tree allows you to explore your filesystem and to open files and directories.
Plugin 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

call vundle#end()            " required

" To ignore plugin indent changes, instead use:
filetype plugin indent on    " required

" Put your non-Plugin stuff after this line

" Use airline plugin in all windows
set laststatus=2
let g:airline_theme='luna'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" Configure the minimum number of tabs needed to show the tabline.
"let g:airline#extensions#tabline#tab_min_count = 2

" Visual autocomplete for command menu
set wildmenu

" Make backspace work like most other apps
set backspace=2

" Set syntax
syntax on

" Set autoindent
set ai

"	Show (partial) command in the last line of the screen.
set showcmd

" Set autoindent for C language
set cindent

" Use the clipboard from the system in VIM
set clipboard=unnamedplus

" Highlight current line
set cursorline
set cursorcolumn

" Tab navigation
nnoremap H gT
nnoremap L gt

" AutoClose
imap < <><left>

" Move lines like in atom
nnoremap <c-s-j> :m .+1<CR>==
nnoremap <c-s-k> :m .-2<CR>==
inoremap <c-s-j> <Esc>:m .+1<CR>==gi
inoremap <c-s-k> <Esc>:m .-2<CR>==gi
vnoremap <c-s-j> :m '>+1<CR>gv=gv
vnoremap <c-s-k> :m '<-2<CR>gv=gv

" Move to beginning/end of line
nnoremap B ^
nnoremap E $

" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

vnoremap <Up> <NOP>
vnoremap <Down> <NOP>
vnoremap <Left> <NOP>
vnoremap <Right> <NOP>

" Changing CAPS to ESC

" Changing the directory from temporary files
set swapfile
set dir=/tmp/
set backup
set backupdir=/tmp/
set undodir=/tmp/
set shiftwidth=2

" Encoding UTF-8.
set encoding=utf8

" Set ignorecase and smartcase in search
set ignorecase
set smartcase

" Search as characters are entered
set incsearch

" Highlight matches
set hlsearch

" Option for tab
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab

" Colors configs
set background=dark
colorscheme molokai " Put the monokai.vim file in .vim/color
set t_Co=256

" Set numbers in lines of file
set number

" Highlight matching [{()}]
set showmatch

" Save with ctrl+s

" Set F2 button to call NerdTree
map <F2> :NERDTreeToggle<CR>

" Set F3 button to indent all the file
map <F3> mzgg=G`z

"Remove all trailing whitespace by pressing F4
nnoremap <F4> :let s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=s<Bar><CR>
