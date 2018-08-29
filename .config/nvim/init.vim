set number "Number line
set noswapfile
set mouse=a
set showmode
set encoding=UTF-8
set nobackup
set incsearch
set nowritebackup
set splitright "Open new split in right side
set cursorline "Highlight current line
set colorcolumn=80
set linespace=5
set clipboard+=unnamedplus

" Disable arrow keys
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"Toggle NERDTree hotkey
nnoremap <C-n> :NERDTreeToggle<CR>

nmap <F8> :TagbarToggle<CR>

"Indent
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab "Insert spaces instead tab-symbol
set autoindent

let NERDTreeShowHidden = 0

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv<Paste>

" Colors
highlight LineNr term=bold cterm=NONE ctermfg=red ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

"Close vim with NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1

filetype off
syntax enable

"Plugins
call plug#begin('~/.vim/plugged')
  Plug 'pangloss/vim-javascript'
  Plug 'posva/vim-vue'
  Plug 'scrooloose/nerdtree'
  Plug 'ap/vim-css-color'
  Plug 'alvan/vim-closetag'
  Plug 'mattn/emmet-vim'
  Plug 'bling/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'digitaltoad/vim-pug'
  Plug 'tpope/vim-fugitive'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'wokalski/autocomplete-flow'
  Plug 'Shougo/neosnippet'
  Plug 'Shougo/neosnippet-snippets'
  Plug 'jiangmiao/auto-pairs'
  "Plug 'morhetz/gruvbox'
  Plug 'airblade/vim-gitgutter'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'vim-scripts/MatchTag'
  Plug 'crusoexia/vim-monokai'
  Plug 'ryanoasis/vim-devicons'
  Plug 'scrooloose/nerdcommenter'
  Plug 'hushicai/tagbar-javascript.vim'
  Plug 'majutsushi/tagbar'
  " Plug 'vim-syntastic/syntastic'
" Linters
  " Plug 'pugjs/pug-lint'

  let g:deoplete#enable_at_startup = 1
  let g:neosnippet#enable_completed_snippet = 1

   "deoplete tab-complete
  inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
call plug#end()

colorscheme monokai
let g:airline_theme = 'wombat'
set background=dark



