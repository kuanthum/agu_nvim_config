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

"KEY MAP

let mapleader=";"
nnoremap <leader> $VIM<CR>

"REPLE
nnoremap <leader><leader>e :ReplToggle<CR>
map <leader>e <Plug>ReplSendLine
vmap <leader>e <Plug>ReplSendVisual

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
call plug#end()

"ONEDARK 
set background=dark
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
colorscheme onedark:

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
