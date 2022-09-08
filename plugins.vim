" And now, some bundles

" Colorscheme
Plug 'rakr/vim-one'

" Options to delete, select, copy, etc inside tags and other block symbols
Plug 'tpope/vim-surround'

" Snippets, this is my fork to add some stuff
Plug 'InFog/snipmate.vim'

" Relative line numbers in normal mode and absolute in insert mode (magic)
Plug 'myusuf3/numbers.vim'

" Show trailing spaces
Plug 'bronson/vim-trailing-whitespace'

" Ack search tool
Plug 'mileszs/ack.vim'

" Managing tab titles
Plug 'gcmt/taboo.vim'

" Commenting
Plug 'preservim/nerdcommenter'
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

" Highlights word under the cursor
Plug 'dominikduda/vim_current_word'
let g:vim_current_word#highlight_current_word = 0

" Show the marks
Plug 'jeetsukumaran/vim-markology'
let g:markology_include="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

" Shows added, modified and deleted lines on git repos
Plug 'mhinz/vim-signify'

" Git goodies
Plug 'tpope/vim-fugitive'

" Tagbar to show the file's tags (depends on exuberant-ctags)
Plug 'majutsushi/tagbar'
nnoremap <leader>l :TagbarToggle<CR>
let g:tagbar_autoclose=1
let g:tagbar_autofocus=1
let g:tagbar_compact=1
let g:tagbar_show_linenumbers=2

" Statusline
Plug 'itchyny/lightline.vim'
let g:lightline = {
    \ 'colorscheme': 'one',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'fugitive#head'
    \ },
    \ }

Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
    \ 'coc-diagnostic',
    \ 'coc-go',
    \ 'coc-tsserver',
    \ 'coc-jedi',
    \ 'coc-solargraph',
    \ 'coc-phpactor']
set updatetime=300
set signcolumn=yes

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nnoremap <leader>d <Plug>(coc-definition)
nnoremap <leader>y <Plug>(coc-type-definition)
nnoremap <leader>i <Plug>(coc-implementation)
nnoremap <leader>r <Plug>(coc-references)
