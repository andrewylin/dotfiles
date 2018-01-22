" for Vundle
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/indentpython.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" end for Vundle


" enable all Python syntax highlighting features
let python_highlight_all = 1
syntax on
" show the matching part of the pair for [] {} and ()
set showmatch
" show line numbers
set number
" for proper PEP8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix
" flag unnecessary whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
" UTF8 support
set encoding=utf-8

set statusline=[%n]\ %<%F\ \ \ [%M%R%H%W%Y][%{&ff}]\ \ %=\ line:%l/%L\ col:%c\ \ \ %p%%\ \ \ @%{strftime(\"%H:%M:%S\")}
hi statusline ctermbg=white ctermfg=black
set laststatus=2

syntax on
set background=dark
colorscheme elflord

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright


" " before reading realpython article
" set tabstop=4
" set shiftwidth=4
" set noexpandtab
" " Expand tabs for python and javascript files
" autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
" autocmd Filetype javascript setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
" set smartindent
" " end before reading realpython article
