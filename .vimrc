" Vundle settings.
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'The-NERD-tree'
Bundle 'ZoomWin'
Bundle 'blackboard.vim'
Bundle 'django.vim'
Bundle 'gmarik/vundle'
Bundle 'hdima/python-syntax'
Bundle 'inkpot'
Bundle 'lepture/vim-css'
Bundle 'pangloss/vim-javascript'
Bundle 'scrooloose/nerdcommenter'

filetype plugin indent on
" END Vundle settings.

set nocompatible
set backspace=indent,eol,start
set nowrap
set ai ts=2 sts=2 et sw=2
set smarttab                                                                                                                                                                     
set autoindent nocindent nosmartindent      

" Pretty colors
syntax on
colorscheme inkpot
set cursorline
set colorcolumn=80
hi CursorLine term=NONE cterm=NONE ctermbg=235 guibg=#444444
hi ColorColumn term=NONE ctermbg=234 guibg=#1c1c1c

" python.vim syntax
let python_highlight_all=1

" load the plugin and indent settings for the detected filetype
filetype plugin on
filetype indent on

" Disable scrollbars
set guioptions-=r
set guioptions-=T
set guioptions-=L

" don't leave backup files scattered about.
set updatecount=0
set nobackup
set nowritebackup

"Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

"NERDTree
let NERDTreeIgnore=['\.pyc$']
let NERDTreeShowHidden=1
map <Leader>n :NERDTreeToggle<CR>

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Always show status line
set laststatus=2
set statusline=                                                                                                                                                                  
set statusline +=\ %n\             "buffer number                                                                                                                                
set statusline +=[%Y]              "file type                                                                                                                                  
set statusline +=\ %<%F            "full path                                                                                                                                    
set statusline +=%m                "modified flag                                                                                                                                
set statusline +=%=%5l             "current line                                                                                                                                 
set statusline +=/%L               "total lines                                                                                                                                  
set statusline +=%4v\              "virtual column number                                                                                                                        
set statusline +=0x%04B\           "character under cursor"

" Allow inserting at beginning of all lines selected in Visual Line mode                                                                                                         
vnoremap <expr> I mode() ==# 'V' ? "\<C-v>0I" : "I"

" Rebind of ZoomWin. <c-w>o doesn't seem to work right
map <Leader>z :ZoomWin<CR>

" use ctrl-h/j/k/l to switch between splits
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
