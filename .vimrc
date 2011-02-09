set backspace=indent,eol,start
set guifont=DejaVu\ Sans\ Mono:h13
set nocompatible
syntax on
set number
set ai ts=4 sts=4 et sw=4
set nowrap
set mouse=a

if has("gui_running")
    colorscheme blackboard
else
    colorscheme inkpot
    hi CursorLine term=NONE cterm=NONE ctermbg=235 guibg=#444444
endif

" Line and column highlights
set cursorline
set colorcolumn=120
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

" Command-T configuration
let g:CommandTMaxHeight=10

" Always show status line
set laststatus=2
" Custom Status Line
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%04.8b]\ [HEX=\%04.4B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" Indent and unindent visual blocks with <Command-[> and <Command-]> (TextMate Style)
map <D-]> >gv
map <D-[> <gv

if has("gui_macvim")
  let macvim_hig_shift_movement = 1
endif

" Shortcut call to setup rah editing env
function! RepowerSetup()
    cd ~/Documents/RepowerAtHome/www
    NERDTree rah
endfunction
command RAH call RepowerSetup()

" Rebind of ZoomWin. <c-w>o doesn't seem to work right
map <Leader>z :ZoomWin<CR>

" use ctrl-h/j/k/l to switch between splits
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

