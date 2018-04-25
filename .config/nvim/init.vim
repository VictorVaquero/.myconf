execute pathogen#infect()
filetype plugin indent on
set background=dark
colorscheme material-monokai
let g:materialmonokai_italic=1
let g:materialmonokai_subtle_spell=1



syntax on " Start syntax highlighting if it hasn't already
set hidden " To make it easier to work with hidden buffers
set autowrite " Instead of leaving hidden buffers, make :w automaticly when you leave one
set number " Shows the line's number at the left
set smartindent " Auto tabs the lines when inside for,if,...
set tabstop=4   " Size of tabs i think
set shiftwidth=4 " Size of something
set expandtab " Tabs convert to spaces
set autochdir " Automaticly set's path to current file 


" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

if has('nvim') " Para que la .file sea general
	tnoremap <Esc> <C-\><C-n> 
endif

" For easier buffer switching NOT WORKING
noremap <C-6> :bn<CR> 
" Easy new line 
noremap <CR> o<ESC> 


