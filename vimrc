" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" TODO: Load plugins here (pathogen or vundle)

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" TODO: Pick a leader key
" let mapleader = ","

" Security
set modelines=0

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Show line numbers
set number

" Relative Line numbers
set relativenumber

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
" set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
" nnoremap / /\v
" vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL


set mouse+=a
" set clipboard+=unnamed    "for primary (copy on select)
set clipboard+=unnamedplus  "for clipboard (ctrl+c)
set autoindent noexpandtab tabstop=4 shiftwidth=4
set noshowmode
set guifont=Fira\ Code,MesloLGS\ NF,Material\ Design\ Icons:h17
let g:neovide_cursor_antialiasing=v:false
set splitbelow splitright
set undofile
set undodir=~/.vim/history
" nnoremap <TAB> :tabnext<CR>
" nnoremap <S-TAB> :tabprev<CR>
" nnoremap gb :bn <CR>
" nnoremap gB :bp <CR>
nnoremap <silent> <M-h> :wincmd h<CR>
nnoremap <silent> <M-l> :wincmd l<CR>
nnoremap <silent> <M-j> :wincmd j<CR>
nnoremap <silent> <M-k> :wincmd k<CR>

nnoremap <M-d> <C-d>
nnoremap <M-u> <C-u>

inoremap <M-j> <Down>
inoremap <M-k> <Up>
inoremap <M-h> <Left>
inoremap <M-l> <Right>
nnoremap <M-g> :History:<CR>
nnoremap <silent> <Esc> :noh<CR>
vnoremap < <gv
vnoremap > >gv
xnoremap p "_dp
xnoremap P "_dP
map <C-s> :w<CR>
map <C-q> :Kwbd<CR>
:ca sw SudaWrite
au BufEnter * set noro "ignore read only status
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
