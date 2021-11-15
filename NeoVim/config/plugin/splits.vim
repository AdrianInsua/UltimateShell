" TERM REMAPS
"
" create a term with powershell in a new tab
nmap <leader>term :tabnew:term<CR>a
nmap <leader>tt :bo split<CR> :resize 10<CR> :term<CR>a
nmap <leader>ttv :vsplit<CR> :term<CR>
" remap escape in term mode
tnoremap jj <C-\><C-n>

" splits
nmap <Leader>vs :vsplit<CR> :TmuxNavigateRight<CR>
nmap <Leader>hs :split<CR> :TmuxNavigateDown<CR>

" split resizes
nmap , :vertical resize +5<CR>
nmap + :resize +5<CR>

