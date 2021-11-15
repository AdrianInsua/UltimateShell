let mapleader = " "
set wildcharm=<tab>

" COMMON REMAPS
"
" map escape
imap jj <Esc>
" vim config
nnoremap <silent><Leader>1 :source ~/AppData/Local/nvim/init.vim \| :PlugInstall<CR>

" seach next ocurrence
nmap ss /
" write
nmap <Leader>w :w!<CR>
" close
nmap <C-c> :q!<CR>
" close all
nmap <Leader>qa :qa!<CR>
" Close and save
nmap <Leader>x :w<CR>:q!<CR>

" select all
nmap <Leader>al ggVG
" paste without losing clipboard
vnoremap <C-p> "_dP


nnoremap <leader>oo :SymbolsOutline<CR>
