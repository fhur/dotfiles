" Initialize pathogen
" https://github.com/tpope/vim-pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on
set background=dark

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
nmap <C-k> <C-w>k

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

" Always copy to the normal/OS clipboard:
set clipboard+=unnamedplus

" No backup lines
set swapfile
set dir=~/tmp

" No line wraps
set nowrap

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

" Set the default colorscheme
colorscheme hybrid

" Dont create friggin .swp files. That's what git is for
set nobackup

" NERDTree options
" Toogle nerd tree
nmap <C-n> :NERDTreeToggle<CR>

" Fireplace options
" Evaluate the current buffer
nmap <C-e> :%Eval<CR>

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
  endif

" }
