lua require("suampa")

nnoremap <C-t> :Telescope<CR>
" Search for git files
nnoremap <Leader>p :lua require('telescope.builtin').git_files()<Cr>
" Search all files
nnoremap <Leader>ff :lua require('telescope.builtin').find_files()<Cr>
" Search including ignored 
nnoremap <Leader>fi :lua require('suampa.telescope').search_ignored()<CR>
" Global search 
nnoremap <Leader>fb :lua require('telescope.builtin').file_browser()<Cr>
" Live grep
nnoremap <Leader>g :Telescope live_grep<Cr>
" Map fzf to search nvim config files
nnoremap <Leader>ev :lua require('suampa.telescope').search_dotfiles()<Cr>
" Map fzf to search work md files
nnoremap <Leader>ew :lua require('suampa.telescope').search_workfiles()<Cr>

" Git branches
"
nnoremap <Leader>gb :lua require('telescope.builtin').git_branches()<Cr>

nnoremap <Leader>ts :lua require('telescope.builtin').git_status()<CR>


"LSP
"

nnoremap <Leader>aa :Telescope lsp_code_actions<CR>

