let mapleader = " "
set wildcharm=<tab>

" COMMON REMAPS
"
" map escape
imap jj <Esc>
" vim config
nnoremap <silent><Leader>1 :source ~/AppData/Local/nvim/init.vim \| :PlugInstall<CR>

" search
nmap <Leader>s <Plug>(easymotion-sn)
" seach next ocurrence
nmap <Leader>f /
" replace
nmap <Leader>r <Plug>(Scalpel)
" delete search highlights
nmap <Leader>ns :noh<CR>
" folders tree
nmap <Leader>nt :NERDTreeFind<CR>
" Explorer
nmap <Leader>ex :Explore<CR> 
" search for methods
nmap <Leader>om :CocList outline methods<CR>
" write
nmap <Leader>w :w!<CR>
" close
nmap <C-c> :q!<CR>
" close all
nmap <C-q> :qa!<CR>
" select all
nmap <Leader>al ggVG
" open file
nmap <Leader>e :e 
"open package
nmap <Leader>ep :e package.json<CR>
"open code/package 
nmap <Leader>ecp :e code/package.json<CR>
"open currentFile
nmap <Leader>ec :e %<tab>
" Close and save
nmap <Leader>x :w<CR>:q!<CR>
" Back to previous file
nmap <Leader>b :e#<CR>
" move line down
nmap <A-j> :m +1<CR>
vnoremap <A-j> :m '>+1<CR>gv=gv
" move line up
nmap <A-k> :m -2<CR>
vnoremap <A-k> :m '<-2<CR>gv=gv

" paste without losing clipboard
vnoremap <C-p> "_dP

" TERM REMAPS
"
" create a term with powershell in a new tab
nmap <leader>term :tabnew:termApowershell.exe
" remap escape in term mode
tnoremap jj <C-\><C-n>

" splits
nmap <Leader>vs :vsplit<CR> :TmuxNavigateRight<CR>
nmap <Leader>hs :split<CR> :TmuxNavigateDown<CR>

" split resizes
nmap <A-L> :vertical resize +5<CR>
nmap <A-H> :vertical resize -5<CR>
nmap <A-K> :resize +5<CR>
nmap <A-J> :resize -5<CR>

" git remaps
nnoremap <leader>ga. :G add .<CR>
nnoremap <leader>gs :G<CR>
nnoremap <leader>gb :GBranches<CR>
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

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gimp <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gf <Plug>(coc-definition)
nmap <silent> [f <Plug>(coc-definition)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

command! -nargs=0 Prettier :CocCommand prettier.formatFile
nmap <silent>=i :CocCommand prettier.formatFile<CR>

" Map fzf search to CTRL P
nnoremap <Leader>p :Files<Cr>
" Map fzf + ag search to CTRL P
nnoremap <Leader>g :Ag<Cr>
" Map fzf to search nvim config files
nnoremap <Leader>ev :Files ~/AppData/Local/nvim/<Cr>
" Map fzf to search work md files
nnoremap <Leader>ew :Files ~/Documents/work<Cr>

" Snippet remaps
imap <A-l> <Plug>(coc-snippets-expand)

vmap <A-j> <Plug>(coc-snippets-select)

xmap <leader>sn <Plug>(coc-convert-snippet)

" Run jest for current project
command! -nargs=0 Jest :call  CocAction('runCommand', 'jest.projectTest')

" Run jest for current file
command! -nargs=0 JestCurrent :call  CocAction('runCommand', 'jest.fileTest', ['%'])

" Run jest for current test
nnoremap <leader>te :call CocAction('runCommand', 'jest.singleTest')<CR>

" Init jest in current cwd, require global jest command exists
command! JestInit :call CocAction('runCommand', 'jest.init')

" debugging
"
nmap <Leader>db :call vimspector#Launch()<CR>
nmap <Leader>dc :VimspectorReset<CR>
nmap <Leader>de :VimspectorEval

nmap <Leader>dl <Plug>VimspectorStepInto
nmap <Leader>dj <Plug>VimspectorStopOver
nmap <Leader>dk <Plug>VimspectorStepOut
nnoremap <Leader>d<space> :call vimspector#Continue()<CR>

nmap <Leader>drc <Plug>VimspectorRunToCursor
nmap <Leader>dbp <Plug>VimspectorToggleBreakpoint
nmap <Leader>dcbp <Plug>VimspectorToggleConditionalBreakpoint
