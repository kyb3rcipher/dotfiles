" Style
syntax on
set background=dark

" General
set number
set relativenumber
set clipboard=unnamedplus
set noswapfile

" Identation
set expandtab        " Use space instead of tabs
set tabstop=4        " 1 tab == 4 spaces
set shiftwidth=4     " Shift 4 spaces when tab
set smartindent      " Autoindent new lines

"-------------------------------
" Mappings
"-------------------------------
let mapleader = " "
" Escape
:imap kk <Esc>

" Save/exit
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>x :x<CR>
nmap <Leader>s :wa<CR>
nmap <Leader>e :qa!<CR>

" Movement in insert mode
imap <C-h> <left>
imap <C-j> <down>
imap <C-k> <up>
imap <C-l> <right>
