" PLUGINS

call plug#begin('~/AppData/Local/nvim-data/site/plugged')

" Themes

Plug 'gruvbox-community/gruvbox'

" IDE

Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-surround'
Plug 'puremourning/vimspector'
Plug 'jxnblk/vim-mdx-js'

" Plebvim lsp Plugins
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'adrianiy/cmp-tabnine', { 'do': './install.sh' }
Plug 'onsails/lspkind-nvim'
Plug 'williamboman/nvim-lsp-installer'
Plug 'sbdchd/neoformat'

" Plug 'nvim-lua/completion-nvim'
Plug 'glepnir/lspsaga.nvim'
Plug 'simrat39/symbols-outline.nvim'

" Neovim Tree shitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

" TELESCOPE
"
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'


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


