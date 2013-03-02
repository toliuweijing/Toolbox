" -- Pathogen --
call pathogen#infect()
Helptags

set nocompatible    "no compatibble to VI

set modelines=0	    "security stuff
filetype plugin indent on   "indentation
filetype plugin on


set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab



set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

let mapleader = ","


nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <leader>t :NERDTree<cr>
nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=81


nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk



au FocusLost * :wa
au InsertLeave * write

inoremap jj <ESC>



syntax enable


" -- SingleCompile -- "
nmap <F9>  :make<cr>:cope<cr><C-w>k   
nmap <F10> :SCCompileRun<cr>
:nnoremap <Leader>b :buffers<CR>:buffer<Space>
:nnoremap <Leader>bd :bd<CR>
:set autowriteall
"--- Quick Editing VIMRC ---:
nnoremap <Leader>rc :e ~/.vimrc<cr>

" -- Parenthesis Matching ---"
"inoremap { {<CR><BS>}<Esc>ko
"inoremap ( ()<Esc>i
"inoremap [ []<Esc>i

" -- clang_complete with snipMate --
"  completion prior to parameter jump
"let g:clang_snippets = 1
"let g:clang_snippets_engine = 'snipmate'


" --- clang_complete ---"
let g:clang_user_options='|| exit 0'
let g:clang_complete_copen=1
"let g:clang_user_options = '-I$HOME/boost_1_53_0'
let g:clang_user_options = '-Iboost_1_53_0'

let g:clang_periodic_quickfix=0

" --- ctags --- "
set tags=tags


" --- nerdtree ---"
let NERDTreeWinSize=18


" --- tagbar ---"
nmap <F8> :TagbarToggle<CR>


" --- Alternative --- "
nmap <Leader>ih :IHV<CR>
nmap <Leader>is :AV<CR>


" --- Next Complation Error_--"
nmap <Leader>cn :cnext<CR>


" --- Copy from .h to .cpp file --- "

nmap <Leader>cmf yy:A<CR>100%pi<BS><ESC>$x0w

" --- fast open file --- "
nmap <Leader>ecs :e ~/Dropbox/cheatsheet<CR>
nmap <Leader>emk :e ./Makefile<CR>
"nmap <Leader>pull :!sudo ~/Dropbox/My\ CodeLib/VIM/update_from_lastest<CR>
"nmap <Leader>push :!sudo ~/Dropbox/My\ CodeLib/VIM/backup_to_lastest<CR>
nmap <Leader>mk :wa<CR>:make<CR>
nmap <Leader>mkr <Leader>mk:make run<CR>
nmap <Leader>mka :make all<CR>
nmap <Leader>mkc :make clean<CR>
nmap <Leader>w :w<CR>
nmap <Leader>wqa :wqa<CR>
nmap <Leader>ff :FufFile<CR> "--- FuzzyFinder ---"
nmap <Leader>rls :%s//<c-r><c-w>/gc
nmap <Leader>cr :!gcc "%:p" -lstdc++ -Iboost_1_53_0 && ./a.out <cr>


" --- colorscheme ---"
set t_Co=256
let g:solarized_termtrans = 1

" --- show hidden ---"
let b:NERDTreeShowHidden=1
