" PLUGINS

call plug#begin('~/.vim/plugged')

" Themes

Plug 'gruvbox-community/gruvbox'

" IDE

Plug 'christoomey/vim-tmux-navigator'
Plug 'hoob3rt/lualine.nvim'
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-surround'
Plug 'jxnblk/vim-mdx-js'
Plug 'akinsho/toggleterm.nvim'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/nvim-cmp'
Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }
Plug 'hrsh7th/vim-vsnip'
Plug 'onsails/lspkind-nvim'
Plug 'williamboman/nvim-lsp-installer'
Plug 'sbdchd/neoformat'

" Plug 'nvim-lua/completion-nvim'
Plug 'glepnir/lspsaga.nvim'
Plug 'simrat39/symbols-outline.nvim'

 "Neovim Tree shitter
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
Plug 'nvim-telescope/telescope-file-browser.nvim'

" HARPOON
"
Plug 'ThePrimeagen/harpoon'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'ThePrimeagen/git-worktree.nvim'

" Games

call plug#end()

" Set colorscheme
colorscheme gruvbox

lua require("suampa")


