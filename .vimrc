" put cursor where it was last left on exit

au BufReadPost *
       \ if ! exists("g:leave_my_cursor_position_alone") |
       \     if line("'\"") > 0 && line ("'\"") <= line("$") |
       \         exe "normal g'\"" |
       \     endif |
       \ endif


" Add full file path to your existing statusline
set statusline+=%f

set ls=2

"set colorscheme
"colorscheme desert
colorscheme industry

" Use Alt for maximize etc
set winaltkeys=yes

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on
 
" Enable syntax highlighting
syntax on

" Better command-line completion
set wildmenu
 
" Show partial commands in the last line of the screen
set showcmd

" Always wrap long lines:
set wrap

" use ctrl-h/j/k/l to switch between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" show line num by default
set number
" set relativenumber

" set cursorline          " highlight current line

" 4 character Tab
set shiftwidth=4
set softtabstop=4

" Spaces are better than a tab character
set expandtab
set smarttab

set autoindent

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Use visual bell instead of beeping when doing something wrong
set visualbell

set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
map N Nzz
map n nzz

" remove highlight of serach using \+space
nnoremap <leader><space> :nohlsearch<CR>

set history=100
set backspace=indent,eol,start

" always show n lines above and below cursor
set so=10

" Fold Settings
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

" toggle folds
nnoremap <Bslash> za

" jk remapped to ESC for fast exit
inoremap jk <ESC>
