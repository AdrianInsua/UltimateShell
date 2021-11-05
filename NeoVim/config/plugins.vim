" PLUGINS

call plug#begin('~/.vim/plugged')

" Themes

Plug 'morhetz/gruvbox'

" IDE

"Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-surround'
Plug 'puremourning/vimspector'
Plug 'jxnblk/vim-mdx-js'

" Autocomplete

Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'sheerun/vim-polyglot'

" FZF

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'

" Git

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Games

"Plug 'ThePrimeagen/vim-be-good'
"Plug 'tjdevries/train.nvim'

" Navigator
Plug 'glacambre/firenvim', { 'do': {_ -> firenvim#install(1)} }

call plug#end()

" Set colorscheme
colorscheme gruvbox
let g:gruvbox_contrast_dark = "light"

let g:vimspector_enable_mappings = 'HUMAN'

" Reconfigure plugins
let g:EasyMotion_smartcase = 1

let g:fzf_checkout_merge_settings = v:false
let g:fzf_branch_actions = {
      \ 'rebase': {
      \   'prompt': 'Rebase> ',
      \   'execute': 'echo system("{git} rebase {branch}")',
      \   'multiple': v:false,
      \   'keymap': 'alt-r',
      \   'required': ['branch'],
      \   'confirm': v:false,
      \ },
      \ 'track': {
      \   'prompt': 'Track> ',
      \   'execute': 'echo system("{git} checkout --track {branch}")',
      \   'multiple': v:false,
      \   'keymap': 'ctrl-t',
      \   'required': ['branch'],
      \   'confirm': v:false,
      \ },
      \ 'new': {
      \   'prompt': 'New branch> ',
      \   'execute': 'echo system("{git} checkout -b {input}")',
      \   'multiple': v:false,
      \   'keymap': 'ctrl-b',
      \   'required': [],
      \   'confirm': v:false,
      \ },
      \ 'checkout': {
      \   'prompt': 'Checkout> ',
      \   'execute': 'echo system("{git} checkout {branch}")',
      \   'multiple': v:false,
      \   'keymap': 'enter',
      \   'required': ['branch'],
      \   'confirm': v:false,
      \ },
      \ 'remove': {
      \   'prompt': 'Remove> ',
      \   'execute': 'echo system("{git} branch -D {branch}")',
      \   'multiple': v:false,
      \   'keymap': 'ctrl-r',
      \   'required': ['branch'],
      \   'confirm': v:true,
      \ },
\}
let $FZF_DEFAULT_COMMAND='ag -g ""'
let $FZF_DEFAULT_OPTS='--layout=reverse --bind ctrl-d:preview-down --bind ctrl-u:preview-up'
let g:fzf_checkout_git_options = '--sort=-committerdate'


""" Coc configuration
let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-eslint',  'coc-prettier', 'coc-snippets', 'coc-jest', 'coc-css', 'coc-vetur']

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

""" Multiple cursor coc
nmap <expr> <silent> <A-d> <SID>select_current_word()
function! s:select_current_word()
  if !get(g:, 'coc_cursors_activated', 0)
    return "\<Plug>(coc-cursors-word)"
  endif
  return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
endfunc

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


"Browser
"
let g:firenvim_config = { 
    \ 'globalSettings': {
        \ 'alt': 'all',
    \  },
    \ 'localSettings': {
        \ '.*': {
            \ 'cmdline': 'neovim',
            \ 'priority': 0,
            \ 'selector': 'textarea',
            \ 'takeover': 'always',
        \ },
    \ }
\ }
let fc = g:firenvim_config['localSettings']
let fc['.*'] = { 'selector': 'textarea:not([role=combobox])', 'takeover': 'never' }
let g:closetag_xhtml_filetypes = 'xhtml,javascript.jsx,jsx,js'
