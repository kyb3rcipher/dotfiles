" Basic config
set encoding=UTF-8
set clipboard=unnamedplus "copy clipboard to system
set wrap! "toggle word wrap
set mouse=a	"enable mouse, cuz idc if u hate the mouse
set noswapfile
set number relativenumber "lines number

" Shortcuts
let mapleader=" "
"escape shortcut
:imap jj <Esc>
"save/exit
map <Leader>w :w<CR>
map <Leader>q :q<CR>
map <Leader>x :x<CR>
map <Leader>qq :q!<CR>
"plugin: 'git-messenger.vim'
nmap <C-w> <Plug>(git-messenger)
"plugin: 'files-tree'
map <Leader>b :NERDTreeFind<CR>
"plugin 'multiterm'
nmap <F12> <Plug>(Multiterm)
tmap <F12> <Plug>(Multiterm)
"plugin 'vim-fugitive'
map <Leader>g :Git<Cr>
map <Leader>gc :Git commit<Cr>
map <Leader>gp :Git push<Cr>

" Keyboard keys config
"switch tabs 
nnoremap <C-e> :set nomore <Bar> :ls <Bar> :set more <CR>:b!<Space> moving keys in editor mode with ctrl
inoremap <C-h> <C-o>h
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l

" Tabs (not spaces!!!)
set tabstop=4       "number of visual spaces per TAB
set softtabstop=4   "number of spaces in tab when editing
set shiftwidth=4    "number of spaces to use for autoindent
"set expandtab      "tabs are space
set copyindent      "copy indent from the previous line
set autoindent

" Plugins
call plug#begin()
" Utilities
Plug 'tpope/vim-fugitive'      "git wrapper
Plug 'airblade/vim-gitgutter'  "git changes marker
Plug 'rhysd/git-messenger.vim' "git changes marks
Plug 'chengzeyi/multiterm.vim' "floating terminal
Plug 'lilydjwg/colorizer'      "color to color codes
Plug 'preservim/nerdtree'      "files-tree panel
Plug 'alvan/vim-closetag'      "for html/xml
Plug 'max-0406/autoclose.nvim' "for others like {}
Plug 'ryanoasis/vim-devicons'  "vim icons (icons for files-tree)

" Style
Plug 'navarasu/onedark.nvim'        "theme
Plug 'romgrk/barbar.nvim'           "tab-navbar
Plug 'nvim-lualine/lualine.nvim'    "dock-bar
Plug 'kyazdani42/nvim-web-devicons' "icons
call plug#end()
"plugins config
set updatetime=000 "git changes marks init/update time
let NERDTreeShowHidden=1
let g:NERDTreeQuitOnOpen=1
nnoremap <C-b> :NERDTree<CR>
"vim Script
source $HOME/.config/nvim/config/theme.vim
source $HOME/.config/nvim/config/barbar.vim
"lua config
lua << EOF
--> dock-bar (lualine)
require('lualine').get_config()
require('lualine').setup()
EOF