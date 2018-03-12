set background=dark
set termguicolors
colorscheme material-monokai
let g:materialmonokai_italic=1
let g:materialmonokai_subtle_spell=1



syntax on " Start syntax highlighting if it hasn't already
" set hidden  To make it easier to work with hidden buffers
set autowrite " Instead of leaving hidden buffers, make :w automaticly when you leave one

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

