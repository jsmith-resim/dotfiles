"Setup Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'Raimondi/delimitMate'
Plugin 'xolox/vim-misc'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'tpope/vim-abolish'
Plugin 'christoomey/vim-tmux-navigator'
Bundle 'edkolev/tmuxline.vim'
Bundle 'valloric/YouCompleteMe'

let mapleader = "-"

"All plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" NERDTree
map <C-n> :NERDTreeTabsFind<CR>
" Open/close NERDTree Tabs with -t
nmap <silent> <leader>t :NERDTreeFocus<CR>
" To have NERDTree always open on startup
let g:nerdtree_tabs_open_on_console_startup = 1
let NERDTreeShowLineNumbers = 1

" nnoremap <space>f :UniteWithProjectDir -start-insert -auto-preview file_rec/async<CR>
nnoremap <space>b :Unite buffer<CR>
call unite#filters#matcher_default#use(['matcher_fuzzy'])

" EasyMotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:Easymotion_startofline = 0

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <space>j <Plug>(easymotion-j)
map <space>k <Plug>(easymotion-k)

" Misc personal stuff
set backspace=indent,eol,start
syntax enable
set background=dark
colorscheme solarized
" set guifont=Inconsolata-g\ for\ Powerline:h12

set number 
set laststatus=2
set hidden
set autoread
set wildmode=longest,list,full
set wildmenu
set ttyfast
set mouse=a
set incsearch

" Indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

" Turn Off Swap Files
set noswapfile
set nobackup
set nowritebackup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

map gn :bn<CR> 
map gp :bp<CR> 

set shell=/bin/zsh

set guioptions=aem
set listchars=tab:>-

:au FocusLost * :set number
:au FocusGained * :set relativenumber

let g:ycm_server_python_interpreter = '/usr/bin/python3'
let g:ycm_python_binary_path = '/usr/bin/python'
let g:ycm_autoclose_preview_window_after_completion = 1

nnoremap <space>d :YcmCompleter GoToDeclaration<CR>
nnoremap <space>f :YcmCompleter GoToDefinition<CR>

let g:EclimCompletionMethod = 'omnifunc'
