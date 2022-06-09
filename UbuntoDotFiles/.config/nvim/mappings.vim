let mapleader = " "
set wildcharm=<tab>

" COMMON REMAPS
"
" map escape
imap jj <Esc>
" vim config
nnoremap <silent><Leader>I :source ~/.config/nvim/init.vim \| :PlugInstall<CR>

" seach next ocurrence
nmap ss /
" write
nmap <Leader>w :w!<CR>
" close
nmap <C-c> :q!<CR>
" close all
nmap <Leader>qa :qa!<CR>
nmap <Leader>qq :qa!<CR>
" Close and save
nmap <Leader>x :w<CR>:q!<CR>
" Set unix file format
nmap <Leader>fu :set ff=unix<CR>:w!<CR>:e!<CR>
" Set current directory
nmap <Leader>cd :cd %:h<CR>

" select all
nmap <Leader>al ggVG
" paste without losing clipboard
vnoremap <C-p> "_dP

" copy and set cursor at the end
vnoremap <Leader>yf ygv<Esc>

