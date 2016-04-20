" load pathogen + bundles
filetype on
filetype off
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

" syntax highlighting & filetype detection
syntax on
filetype plugin indent on

" this causes you to not be able to delete stuff otherwise, sometimes
set backspace=2

" bom character can cause errors sometimes
set encoding=utf-8 nobomb

" disable backups and swap files
set nobackup noswapfile nowritebackup

" split to right and bottom
set splitright splitbelow

" search stuff
set hlsearch
set incsearch
set ignorecase smartcase

" start scrolling before reaching buffer edges
set scrolloff=5
set sidescrolloff=7
set sidescroll=1

" enable mouse
set mouse=a

" enable syntax-based folding for js
au FileType javascript setlocal foldenable foldmethod=syntax

" 256 color mode
set t_Co=256

" colorscheme
colo parabola

" highlight current line only for active window
autocmd BufWinEnter * setlocal cursorline
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" show invisibles
set list
set listchars=tab:\|\ ,trail:·,extends:❯,precedes:❮

" set tab display as four spaces, don't expand
set shiftwidth=2
set tabstop=2
set noexpandtab
set smarttab

" don't wrap lines
set nowrap
