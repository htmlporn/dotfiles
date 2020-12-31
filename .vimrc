packloadall

set number
set relativenumber

set mouse=a
set showmode
set splitright
set encoding=UTF-8
set cursorline
set colorcolumn=120
set linespace=5
set linebreak
set ic
set tabstop=2
set shiftwidth=2
set smarttab

" Set autoindent
set ai

filetype off

" History lines
set history=500

" Autoread a file when it changed in an another program
set autoread
au FocusGained,BufEnter * checktime

set so=7

set wildmenu
set wildmode=full
set ruler


""""""""""""""""""""""""""""""""""""""""""""""""
" Search "
"""""""""""""""""""""""""""""""""""""""""""""""

" Ignore case when search

set ignorecase
set smartcase

" Highlight search results
set hlsearch

" Highlight search result when typing
set incsearch

" Hide search result highlight when enter to insert mode
nnoremap i :noh<cr>i


set magic


""""""""""""""""""""""""""""""""""""""""""""""""
" Interface "
""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader=","

" Fast saving
nmap <leader>w :w!<cr>

" Disable notification sounds
set noerrorbells
set novisualbell

" Enable syntax highlighting
syntax enable

" Turn backup off
set noswapfile
set nobackup
set nowritebackup


""""""""""""""""""""""""""""""""""""""""""""""""
" Interface "
""""""""""""""""""""""""""""""""""""""""""""""""

" Add additional column
set foldlevel=2
set foldnestmax=10
set nofoldenable
set foldcolumn=1
set foldmethod=syntax


""""""""""""""""""""""""""""""""""""""""""""""""
" Prettier "

" 'npm i -g prettier' "
" https://github.com/prettier/vim-prettier "
""""""""""""""""""""""""""""""""""""""""""""""""

nmap <Leader>py <Plug>(Prettier)


""""""""""""""""""""""""""""""""""""""""""""""""
" NerdTree "
""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


let g:airline#extensions#tabline#enabled = 1
