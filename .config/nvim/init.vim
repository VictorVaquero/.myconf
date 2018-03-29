set background=dark
colorscheme material-monokai
let g:materialmonokai_italic=1
let g:materialmonokai_subtle_spell=1



syntax on " Start syntax highlighting if it hasn't already
set hidden " To make it easier to work with hidden buffers
set autowrite " Instead of leaving hidden buffers, make :w automaticly when you leave one
set number
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

if has('nvim') " Para que la .file sea general
	tnoremap <Esc> <C-\><C-n> 
endif
