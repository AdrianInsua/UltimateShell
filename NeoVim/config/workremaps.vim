" VERSION REMAPS
"
" update feature version and add snapshot
nmap <Leader>uvs /versionf:f.f.hf.lct"0-SNAPSHOTjj
" update feature version
nmap <Leader>uvf /versionf.f.hf.lct"0jj
" update bugfix version
nmap <Leader>uvb /versionf:_f:f,hhjj
" delete snapshot version and update bugfix
nmap <Leader>dsvb /-SNAPSHOTvt"dF.hll
" delete snapshot suffix
nmap <Leader>dsv /-SNAPSHOTct"jj

nmap <Leader>bn :Git branch/*f.lv$hy:qi[jjpA 
nmap <Leader>lbn :Git branch/*f/lv$hy:qi[jjpA 

nnoremap <Leader>cof :G checkout -b feature/autodeploy.DRFRCOMR-
nnoremap <Leader>cob :G checkout -b bugfix/autodeploy.DRFRCOMR-
nnoremap <Leader>sif :G checkout -b feature/autodeploy.DRFRSINT-
nnoremap <Leader>sib :G checkout -b bugfix/autodeploy.DRFRSINT-
nnoremap <Leader>psf :G checkout -b feature/autodeploy.DRFRPSTS-
nnoremap <Leader>psb :G checkout -b feature/autodeploy.DRFRPSTS-

nnoremap <Leader>jsb :G checkout -b bugfix/LIBJSDRC-
nnoremap <Leader>jsf :G checkout -b feature/LIBJSDRC-
nnoremap <Leader>ngb :G checkout -b bugfix/LIBNGDRC-
nnoremap <Leader>ngf :G checkout -b feature/LIBNGDRC-

nnoremap <Leader>rel :G checkout -b release/
nnoremap <Leader>snap :!powershell.exe -command snap<CR>
