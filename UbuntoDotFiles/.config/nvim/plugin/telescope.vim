nnoremap <C-t> :Telescope<CR>
" Search for git files
nnoremap <Leader>p :lua require('telescope.builtin').git_files()<Cr>
" Search all files
nnoremap <Leader>ff :lua require('telescope.builtin').find_files()<Cr>
" Search including ignored 
nnoremap <Leader>fi :lua require('suampa.telescope').search_ignored(require('telescope.themes').get_dropdown({}))<CR>
" Global search 
nnoremap <Leader>fb :Telescope file_browser<CR>
nnoremap <Leader>fd :Telescope file_browser path=%:p:h<CR>
" Live grep
nnoremap <Leader>g :Telescope live_grep<Cr>
" Map fzf to search nvim config files
nnoremap <Leader>ev :lua require('suampa.telescope').search_dotfiles()<Cr>
" Map fzf to search work md files
nnoremap <Leader>ew :Telescope file_browser path=~/projects/work<CR>

" Show registers 
nnoremap <Leader>rr :Telescope registers<Cr>
" Show marks
nnoremap <Leader>mm :Telescope marks<CR>

" Git branches
"
nnoremap <Leader>gb :lua require('telescope.builtin').git_branches()<Cr>

nnoremap <Leader>ts :lua require('telescope.builtin').git_status()<CR>


"LSP
"

nnoremap <Leader>aa :Telescope lsp_code_actions<CR>

"HARPOON

nnoremap th :Telescope harpoon marks<CR>
nnoremap <Leader>hp :lua require('harpoon.ui').toggle_quick_menu()<CR>
nnoremap ma :lua require('harpoon.mark').add_file()<CR>
nnoremap -a :lua require('harpoon.ui').nav_file(1)<CR>
nnoremap -s :lua require('harpoon.ui').nav_file(2)<CR>
nnoremap -d :lua require('harpoon.ui').nav_file(3)<CR>
nnoremap -f :lua require('harpoon.ui').nav_file(4)<CR>
nnoremap -g :lua require('harpoon.ui').nav_file(5)<CR>

