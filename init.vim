"NATIVE
set number
set mouse=a
set showcmd 		
set encoding=utf-8
set showmatch 	
set relativenumber
set noswapfile
set clipboard=unnamedplus
syntax enable

"INSTALL PLUGINMANAGER
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"KEY MAP
let mapleader=";"
nnoremap <leader> $VIM<CR>

"REPLE
nnoremap <leader><leader>e :ReplToggle<CR>
map <leader>e <Plug>ReplSendLine
vmap <leader>e <Plug>ReplSendVisual

"PlUGUIN AUTO INSTALL
" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

"PLUGUIN MGMENT
call plug#begin('~/.local/share/nvim/plugged')
Plug 'joshdick/onedark.vim'                 "Theme
Plug 'itchyny/lightline.vim'                "Barra inferior
Plug 'sheerun/vim-polyglot'                 "x
Plug 'preservim/nerdtree'                   "Toggle directories
Plug 'karoliskoncevicius/vim-sendtowindow'  "send code to another window(repl)
Plug 'jupyter-vim/jupyter-vim'              "linkear jupyter con vim
Plug 'tpope/vim-repeat'                     "x
Plug 'pappasam/nvim-repl'                   "Toogle repl
Plug 'tribela/vim-transparent'              "Vim Transparencia

call plug#end()

"ONEDARK 
set background=dark
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
colorscheme onedark

"LIGHTLINE 
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ }

"NERDTREE
let nerdtreeignore = ['\.pyc$']
nnoremap <leader>n :NERDTreeToggle<CR>
"nnoremap <c-n>

"NVIM RPL
let g:repl_split='right'
let g:repl_filetype_commands = {
    \ 'javascript': 'node',
    \ 'python': 'python3',
    \ 'lua': 'lua',
    \ }
