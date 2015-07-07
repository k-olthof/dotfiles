set nocompatible                " Kill VI compatibility
filetype off                    " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'joonty/vdebug.git'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'godlygeek/tabular'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set number                      " Show line numbers
set numberwidth=5               " Number of columns to use for the line number

syntax on                       " Enable syntax highlighting
set background=dark             " Enable dark background
colorscheme solarized           " Enable the Solarized colorscheme
set cursorline                  " Highlight the screen line of the cursor

set laststatus=2                " When the last window will use a status line (0: never, 1: at least two windows, 2: always)

set ttyfast                     " Indicate a fast terminal connection

set backspace=indent,eol,start  " Set proper use of <BS> (http://vimdoc.sourceforge.net/htmldoc/options.html#'backspace')

set expandtab                   " Convert tabs to spaces
set tabstop=4                   " Number of spaces a <Tab> counts for
set softtabstop=4               " Number of spaces a <Tab> counts for when editing
set shiftwidth=4                " Number of spaces to use for (auto)indentation

set title                       " Set window title to filename
set titleold=""
set titlestring=%F

" :E(xplorer) settings
let g:netrw_liststyle=3         " Use the tree listingstyle
let g:netrw_browse_split=4      " Open the file in window
let g:netrw_altv=2              " Split the window to the right i.o. left
let g:netrw_winsize=25
let g:netrw_sort_sequence='[\/]$,*'
let g:netrw_banner=0

" Markdown
let g:markdown_fenced_languages = ['php', 'python', 'erlang', 'shell=sh', 'html', 'css', 'javascript', 'js=javascript', 'json=javascript']

" Use the :SW command to write as sudo
command SW w !sudo tee % > /dev/null

" Open NerdTREE if no files specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Open NerdTREE with <ctrl>+<n>
map <C-n> :NERDTreeToggle<CR>

" Close NerdTREE if it's the only buffer left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Activate CtrlP By pressing <c-p>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" Ignore certain files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_working_path_mode = 'ra'

" Load external settings
source ~/.vim/config/statusline.vim

let g:airline_powerline_fonts = 1

" Allow overriding any of these settings
if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
endif

let mapleader = "\<space>"
:nmap <leader>a ddkkp
:nmap <leader>s ddp
:vmap <leader>q dkkp
:vmap <leader>w dp
