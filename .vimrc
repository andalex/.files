" Formatting
syntax enable
set tabstop=4
set softtabstop=4
set expandtab
set number
set showcmd
set cursorline
filetype indent on
" Backspace like normal
set backspace=indent,eol,start
" Scroll like normal
set mouse=a
" Command line completion
set wildmenu
" Don’t update screen during macro and script execution.
set lazyredraw
" Searching
set showmatch
set incsearch
set hlsearch
" nerdtree like netrw file search
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_winsize=25
" Leader
" file saving

augroup reload_vimrc
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END
