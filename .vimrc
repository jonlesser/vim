" Intuitive backspacing in insert mode
"set backspace=indent,eol,start
set guifont=DejaVu\ Sans\ Mono:h13
colorscheme blackboard
set nocompatible
syntax on
set number
set ai ts=4 sts=4 et sw=4
set cursorline
set colorcolumn=80
set nowrap
set mouse=a

" python.vim syntax
let python_highlight_all=1

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Disable scrollbars
set guioptions-=r
set guioptions-=T
set guioptions-=L

" don't leave backup files scattered about.
set updatecount=0
set nobackup
set nowritebackup

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
let g:CommandTMaxHeight=20

"Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Surround additions for django templates
" 'sb' for block
" 'si' for an if statement
" 'sw' for a with statement
" 'sc' for a comment
" sf' for a for statement
let g:surround_{char2nr("b")} = "{% block\1 \r..*\r &\1%}\r{% endblock %}"
let g:surround_{char2nr("i")} = "{% if\1 \r..*\r &\1%}\r{% endif %}"
let g:surround_{char2nr("w")} = "{% with\1 \r..*\r &\1%}\r{% endwith %}"
let g:surround_{char2nr("c")} = "{% comment\1 \r..*\r &\1%}\r{% endcomment %}"
let g:surround_{char2nr("f")} = "{% for\1 \r..*\r &\1%}\r{% endfor %}"

" Always show status line
set laststatus=2
" Custom Status Line
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%04.8b]\ [HEX=\%04.4B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

" Indent and unindent visual blocks with <Command-[> and <Command-]> (TextMate Style)
map <D-]> >gv
map <D-[> <gv

"command Rah NERDTree rah | cd ~/Documents/RepowerAtHome/www
