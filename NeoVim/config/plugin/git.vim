" git remaps
nnoremap <leader>gs :G<CR>
nnoremap <leader>gl :Glog<CR>
nnoremap <leader>gpl :Git pull<CR>
nnoremap <leader>gpd :Git pull origin develop<CR>
nnoremap <leader>gpm :Git pull origin master<CR>
nnoremap <leader>gpmo :Git pull origin master --allow-unrelated-histories --strategy-option=ours --no-verify<CR>
nnoremap <leader>gpma :Git pull origin main<CR>
nnoremap <leader>gp :Git push  --set-upstream origin head<CR>
nnoremap <leader>gpn :Git push origin --set-upstream head --no-verify<CR>
nnoremap <leader>gpt :Git push --tags --no-verify<CR>
nnoremap <leader>gtag :Git tag 
nnoremap <leader>gc :Git commit<CR>
nnoremap <leader>gcs :Git commit -S<CR>
nnoremap <leader>gcn :Git commit --no-verify<CR>
nnoremap <leader>gcsn :Git commit -S --no-verify<CR>
nnoremap <leader>gcch :Git commit -a -m "update changelog" --no-verify<CR>
nnoremap <leader>gcrv :Git commit -a -m "set release version" --no-verify<CR>
nnoremap <leader>gcsv :Git commit -a -m "set snapshot version" --no-verify<CR>
nnoremap <leader>ad :AbortDispatch<CR>

nmap <leader>ml :diffget //2<CR>
nmap <leader>mr :diffget //3<CR>
