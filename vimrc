" Initialize Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
call plug#begin('~/.local/share/nvim/plugged')
" let Vundle manage Vundle, required

" My favourite plugins
Plug 'altercation/vim-colors-solarized'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ervandew/supertab'
Plug 'guns/vim-clojure-static'
Plug 'mattn/emmet-vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'
Plug 'nanotech/jellybeans.vim'
Plug 'venantius/vim-cljfmt'
" Call :PlugInstall after modifying the list of plugins.

call plug#end()
filetype plugin indent on
syntax on
set background=light
" Set the default colorscheme
colorscheme jellybeans

let g:rainbow_active = 1

" Map space to zz which makes the scroll center on screen
nmap <space> zz
nmap n nzz
nmap N Nzz

" C-h moves to 'left' window
nmap <C-h> <C-w>h
" C-l moves to 'right' window
nmap <C-l> <C-w>l
" Up window
nmap <C-j> <C-w>j
" Down window
nmap <C-k> <C-w>

" Fast 'go to normal mode' actions
imap jj <Esc>j
imap kk <Esc>k
imap kj <Esc>
imap jk <Esc>
imap <C-j> <Esc>j
imap <C-k> <Esc>k
imap <C-o> <Esc>o

" Force me to use hjkl instead of arrows
imap <Up> <Esc>
imap <Down> <Esc>
nmap <Up> <Esc>
nmap <Down> <Esc>
nmap <Left> <Esc>
nmap <Right> <Esc>

" While in insert mode, Ctrl + S will go to
" normal mode, :w the current buffer, and go back to
" insert mode
imap <C-s> <Esc>:w<CR>i
nmap <C-s> :w<CR>

" No backup lines
set nobackup

" No line wraps
set nowrap

" Prevent quotes from being hidden in CSV, json files
set conceallevel=0

" Tabs {
" Modify the way tabs are displayed

  " The width of a TAB is set to 4
  set tabstop=4

  " Indents have a width of 4
  set shiftwidth=2

  " Set the number of columns for a TAB
  set softtabstop=2

  " Expand tab to spaces
  set expandtab

  " Set tab behavior per language
  autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
  autocmd Filetype scala setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
  autocmd Filetype ruby setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
  autocmd Filetype rb setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
  autocmd Filetype csv setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
  autocmd Filetype json setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
  autocmd Filetype xml setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

" }

au BufRead,BufNewFile *.hl setfiletype clojure


" Dont create friggin .swp files. That's what git is for
set nobackup

" Don't close NERDTree when opening a file
let NERDTreeQuitOnOpen=0
map <C-n> :NERDTreeToggle<CR>

" Line numbers {
" Show relative line numbers
  set relativenumber
  set number
" }

" MacVim specific options {

  " Set the font
  if has('gui_running')
    set guifont=Monaco:h12

    " Remove scrollbars
    set guioptions-=T
    set guioptions-=r
  else
    " Always copy to the normal/OS clipboard:
    set clipboard+=unnamedplus
  endif

" }
