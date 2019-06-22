" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Vim will load $VIMRUNTIME/defaults.vim if the user does not have a vimrc.
" This happens after /etc/vim/vimrc(.local) are loaded, so it will override
" any settings in these files.
" If you don't want that to happen, uncomment the below line to prevent
" defaults.vim from being loaded.
" let g:skip_defaults_vim = 1

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.

set showcmd		    " Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		    " Hide buffers when they are abandoned
set mouse=a		    " Enable mouse usage (all modes)
set expandtab		" Tabs are space
set tabstop=4       " Number of visual spaces per TAB
"set softtabstop=4   " Not sure of the effect
set wildmenu        " Visual autocomplete for command menu
set number          " Show line numbers
set autoindent      " New lines inherit the indentation of previous lines
set hlsearch        " Enable search highlighting
set incsearch       " Show partial match during searching
set linebreak       " Avoid wrapping a line in the middle of a word
set laststatus=2    " Always display the status bar
set wildmenu        " Display command line's tab complete option as a menu
set dir=~/.cache/vim " Directory to store swap files
set backupdir=~/.cache/vim " Directory to store backup files

" Buffers
" F3 previous buffer
nnoremap <F3> :bprevious<CR>
" F4 next buffer
nnoremap <F4> :bnext<CR>

" NERDTree plugin
autocmd vimenter * NERDTree ~/dev " Start NERDTree at path ~/dev when vim start
" Open NERDTree with F5 key
nmap <silent> <F5> :NERDTreeToggle<CR> 
let g:NERDTreeWinPos = "right" "NERDTree at right position
source ~/.vim/colors/nerdtree-github-colours-all-enabled.vim


colorschem visualstudio



" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

