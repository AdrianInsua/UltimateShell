" vim editor configuration
"
set number
set numberwidth=1
set relativenumber
set nowrap
set encoding=utf-8
set langmenu=es
set showmatch
set clipboard+=unnamedplus
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set foldmethod=syntax
set foldlevelstart=3
set termguicolors
set undofile

syntax enable

" Highlight on yank
au TextYankPost * silent! lua vim.highlight.on_yank {on_visual=false}
syntax region htmlFold start="<\z(\<\(area\|base\|br\|col\|command\|embed\|hr\|img\|input\|keygen\|link\|meta\|para\|source\|track\|wbr\>\)\@![a-z-]\+\>\)\%(\_s*\_[^/]\?>\|\_s\_[^>]*\_[^>/]>\)" end="</\z1\_s*>" fold transparent keepend extend containedin=htmlHead
