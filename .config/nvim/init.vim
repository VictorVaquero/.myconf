" Vim plug
call plug#begin('~/config/nvim/plugged')
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'} "Autocomplete
Plug 'zchee/deoplete-jedi' " Autocomplete for python
Plug 'vim-airline/vim-airline' " Powerline but for nvim 
Plug 'tpope/vim-fugitive' " Git support
Plug 'pangloss/vim-javascript' " Better javascript support
"Plug 'alvan/vim-closetag' " Close html tags with < 
"Plug 'w0rp/ale' " Linter
let g:deoplete#enable_at_startup = 1 " Start autocomplete
call plug#end()

set background=dark
colorscheme material-monokai
let g:materialmonokai_italic=1
let g:materialmonokai_subtle_spell=1

let g:deoplete#sources#jedi#show_docstring=1 " Show python docstring with autocomplete
let g:airline_powerline_fonts =1 " Some shit for nice powerline simbols
let g:airline#extensions#branch#enabled = 1 " Add git brach to airline
"let g:airline#extension#ale#enabled = 1 " Enable errors in status bar

"let g:ale_set_highlights = 1 " Linter highlights
"let g:ale_set_signs = 1 

let g:closetag_filenames = '*.html' " html TAGS
let g:closetag_filetypes = 'html' " html TAGS
let g:closetag_shortcut = '>' " html shortcut


filetype plugin indent on " Smart indent
syntax on " Start syntax highlighting if it hasn't already
set hidden " To make it easier to work with hidden buffers
set autowrite " Instead of leaving hidden buffers, make :w automaticly when you leave one
set number " Shows the line's number at the left
set autoindent " Stupid smart indent
"set smartindent " Auto tabs the lines when inside for,if,...
set tabstop=4   " Size of tabs i think
set shiftwidth=4 " Size of something
set expandtab " Tabs convert to spaces
set autochdir " Automaticly set's path to current file 
set breakindent " Smart indent wrapped lines
set encoding=utf-8 " Always use utf8
set nohlsearch " Don't highlight search like ever


" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

if has('nvim') " Para que la .file sea general
	tnoremap <Esc> <C-\><C-n> 
endif

" For easier buffer switching NOT WORKING IN MAC
noremap <C-6> :bn<CR> 
" Easy new line 
noremap <CR> o<ESC>k
" noremap <S-CR> O<ESC>j NOT WORKING




