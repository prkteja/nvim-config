set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc

"""""""""""""""""""VimPlug""""""""""""""""""""""

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'lambdalisue/suda.vim'
Plug 'hoob3rt/lualine.nvim'
Plug 'chrisbra/Colorizer'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'vim-python/python-syntax'
Plug 'farmergreg/vim-lastplace'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-commentary' 
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'akinsho/nvim-bufferline.lua'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'mhinz/vim-startify'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'kyazdani42/nvim-web-devicons'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'karb94/neoscroll.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'linrongbin16/lsp-progress.nvim'
Plug 'SmiteshP/nvim-navic'
Plug 'simrat39/rust-tools.nvim'
Plug 'onsails/lspkind.nvim'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'windwp/nvim-autopairs'
Plug 'rmagatti/auto-session'
Plug 'simrat39/symbols-outline.nvim'
Plug 'AckslD/nvim-neoclip.lua'
Plug 'petertriho/nvim-scrollbar'
Plug 'NvChad/nvterm'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'https://gitlab.com/__tpb/monokai-pro.nvim'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}

" Initialize plugin system
call plug#end()

"""""""""""""""""""Colorscheme""""""""""""""""""""

if (has('termguicolors'))
  set termguicolors
endif
source ~/.config/nvim/config/dracula.vim
let g:python_highlight_all = 1

"""""""""""""""""""Plugin Config""""""""""""""""""

source ~/.config/nvim/config/nerdcommenter.vim
source ~/.config/nvim/config/nvim-tree.lua
source ~/.config/nvim/config/fzf.vim
source ~/.config/nvim/config/gitsigns.lua
source ~/.config/nvim/config/treesitter.lua
source ~/.config/nvim/config/nvterm.lua
source ~/.config/nvim/config/indent-blankline.lua
source ~/.config/nvim/config/neoscroll.lua
source ~/.config/nvim/config/telescope.lua
source ~/.config/nvim/config/lspconfig.lua
source ~/.config/nvim/config/lsp-progress.lua
source ~/.config/nvim/config/lsp-keybindings.vim
source ~/.config/nvim/config/nvim-navic.lua
source ~/.config/nvim/config/nvim-lualine.lua
source ~/.config/nvim/config/rust-tools.lua
source ~/.config/nvim/config/auto-session.lua
source ~/.config/nvim/config/startify.vim
source ~/.config/nvim/config/nvim-bufferline.lua
source ~/.config/nvim/config/symbol-outline.lua
source ~/.config/nvim/config/neoclip.lua
source ~/.config/nvim/config/nvim-cmp.lua
source ~/.config/nvim/config/nvim-autopairs.lua
" source ~/.config/nvim/config/nvim-scrollbar.lua
