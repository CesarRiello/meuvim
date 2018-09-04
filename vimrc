" vimrc
"
" Created by InFog - Evaldo Junior <evaldojuniorbento@gmail.com>
" Inspired by a lot of other vimrc files out there
"
" https://github.com/InFog/meuvim
"
" http://evaldojunior.com

set nocompatible
filetype off
set modelines=0
let mapleader=","

" Adding the plugins' setup
source $HOME/.vim/plug/plug.vim
call plug#begin('~/.vim/bundle')
source $HOME/.vim/plugins.vim
" Adding the specific configs for programming languages
for f in split(glob("$HOME/.vim/langs/*.vim"), '\n')
    exe 'source' f
endfor
call plug#end()
" End of the plugins' setup

"
" And now some default Vim options
"
syntax enable

" Persistent undo
if has('persistent_undo')
    set undodir=~/.vimundo      " Dir with undo files
    set undofile                " Persistent undo
    set undolevels=1000
    set undoreload=10000
endif

set nobackup
set noswapfile      " Do not use those annoying swap files

set hidden          " Allow hiding not saved buffers

set encoding=utf-8
set showmode        " Display current mode
set wildmenu        " Allows using tab for vim commands
set nu              " line numbers
set ai              " Auto indentation
set ts=4            " 4 spaces for tab
set sw=4            " 4 spaces for tab
set softtabstop=4   " Backspace also respects tabs with 4 spaces
set et              " No tabs, please, use spaces (no flame wars here, please, okthanksbye)
set ruler           " Cursors position
set cursorline      " Highlights line under cursor
set laststatus=2    " Statusbar is always there
set noshowmode      " Hide mode because status line shows it already
" set ttyfast
set lazyredraw
set t_BE=           " disabling the bracketed paste (Vim 8+)
set backspace=indent,eol,start  " Enabling backspace like any other editor

set clipboard=unnamed

set autoread        " Reloads files that where updated after opening them in Vim

"set tw=80           " text width
set colorcolumn=121  " color for the 80th column
set incsearch       " incremental search
set hlsearch        " Highlight search :)
set ignorecase      " Ignore case for searching
set smartcase       " If your search has upcase letters, do not ignore case

" Maps, shortcuts, etc
"
" Cleaning search highlight
nmap <silent> <leader>/ :nohlsearch<CR>

" File explorer
let g:netrw_bufsettings = 'noma nomod rnu nobl nowrap ro'
map <leader>t :Explore<CR>
map <leader>T :vsplit<CR> :Explore<CR>

" Arrows? Nope. (If you want to have arrows just remove the lines below)
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Want some :help?
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Maps ; to :
nnoremap ; :

" I use jj as ESC, if you want ESC to behave the vim way, remove the lines below
inoremap jj <ESC>
inoremap <ESC> <nop>

" Tabs
nmap <silent> tn :tabnew<CR>
nmap <silent> tc :tabclose<CR>
nmap <silent> tq :tabclose<CR>

" Splits
nmap <silent> <leader>s :split<CR>
nmap <silent> <leader>S :vsplit<CR>

" keep the selection after indentation using << and >>
vnoremap < <gv
vnoremap > >gv

" spell check in Portuguese or English
map <leader>spell :set spell spelllang=pt,en<CR>

:filetype plugin on
:filetype plugin indent on

" To remove trailing spaces
nnoremap <leader>w :%s/\s\+$//<CR>

" To you want nice colors on your terminal?
" Add the following to your bashrc (or the file for your shell)
" export TERM="xterm-256color"

" Some nice colors
set background=light
colorscheme PaperColor
