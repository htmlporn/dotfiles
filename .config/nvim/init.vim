set number "Number line
set noswapfile
set mouse=a
set showmode
set encoding=UTF-8
set nobackup
set nowritebackup
set splitright "Open new split in right side
set cursorline "Highlight current line
set colorcolumn=80
set linespace=5

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

"Indent
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set autoindent

let NERDTreeShowHidden=1

" Colors
colorscheme monokai 
highlight LineNr term=bold cterm=NONE ctermfg=red ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

"Close vim with NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

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
  Plug 'digitaltoad/vim-pug'
  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif
    Plug 'wokalski/autocomplete-flow'
    Plug 'Shougo/neosnippet'
    Plug 'Shougo/neosnippet-snippets'

  let g:deoplete#enable_at_startup = 1
  let g:neosnippet#enable_completed_snippet = 1

  "deoplete tab-complete
  inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
call plug#end()

