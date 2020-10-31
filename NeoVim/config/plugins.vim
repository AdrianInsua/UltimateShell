" PLUGINS

call plug#begin('~/.vim/plugged')

" Themes

Plug 'morhetz/gruvbox'

" IDE

Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'sheerun/vim-polyglot'
Plug 'wincent/scalpel'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-surround'

" Autocomplete

Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" FZF

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'

" Git

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Games

Plug 'ThePrimeagen/vim-be-good'
Plug 'tjdevries/train.nvim'

call plug#end()

" Set colorscheme
colorscheme gruvbox
let g:gruvbox_contrast_dark = "light"

" Reconfigure plugins
let g:EasyMotion_smartcase = 1

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
      \   'keymap': 'alt-t',
      \   'required': ['branch'],
      \   'confirm': v:false,
      \ },
      \}
let $FZF_DEFAULT_COMMAND='ag --ignore node_modules --ignore dist -g ""'

let g:ScalpelMap=0


""" Coc configuration
let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-eslint', 'coc-snippets', 'coc-jest']

if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'

""" Multiple cursor coc
nmap <expr> <silent> <C-d> <SID>select_current_word()
function! s:select_current_word()
  if !get(g:, 'coc_cursors_activated', 0)
    return "\<Plug>(coc-cursors-word)"
  endif
  return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
endfunc
