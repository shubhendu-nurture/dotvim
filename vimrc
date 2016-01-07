call pathogen#infect()
call pathogen#helptags()

set vb
colorscheme onedark "Set Color Scheme
set ruler "Always show current position
set incsearch "Makes search act like search in modern browsers
set hlsearch  "highlight matches
syntax enable "Enable syntax highlighting
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set expandtab "Use spaces instead of tabs
set lazyredraw " redraw only when we need to
set nonu "no number display
set ts=2
set sw=2
set t_Co=256
set is
set smartindent
set mouse=a
set hidden
set encoding=utf-8

" No annoying sound on errors
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" size of a hard tabstop
set tabstop=4

" size of an "indent"
set shiftwidth=4

"a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4

" Commands to restrict coding length to 80 characters
au Filetype erlang set textwidth=80
au Filetype erlang highlight OverLength ctermbg=darkred ctermfg=white guibg=#592929
au FileType match OverLength /\%81v.\+/
au FileType R setl et ts=4 sw=4
" Always open cwindow on grep
autocmd QuickFixCmdPost *grep* cwindow
" Change the color of status line based on modes
set laststatus=2
" now set it up to change the status line based on mode
if version >= 700
  au InsertEnter * hi StatusLine ctermfg=3
  au InsertLeave * hi StatusLine ctermfg=10
endif

autocmd StdinReadPre * let s:std_in=1
if !has('gui_running')
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let g:NERDTreeWinPos = "right"
let NERDTreeIgnore = ['\.pyc$']
let NERDTreeShowBookmarks=1
let NERDTreeQuitOnOpen = 0
map <F2> :NERDTreeToggle<CR>
filetype plugin indent on
set pastetoggle=<F5>
map <F5> :split<CR>
map <F6> :vsplit<CR>


vmap <C-c> "*y     " Yank current selection into system clipboard
nmap <C-c> "*Y     " Yank current line into system clipboard (if nothing is selected)
nmap <C-v> "*p     " Paste from system clipboard
