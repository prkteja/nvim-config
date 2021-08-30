set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc

"""""""""""""""""""VimPlug""""""""""""""""""""""

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'projekt0n/github-nvim-theme'
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
" Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}
Plug 'akinsho/nvim-bufferline.lua'
Plug 'preservim/tagbar'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kyazdani42/nvim-tree.lua'
Plug 'mhinz/vim-startify'
Plug 'akinsho/nvim-toggleterm.lua'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'kyazdani42/nvim-web-devicons'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'karb94/neoscroll.nvim'
Plug 'nvim-telescope/telescope.nvim'
" Initialize plugin system
call plug#end()

"""""""""""""""""""Colorscheme""""""""""""""""""""

" For Neovim 0.1.3 and 0.1.4 - https://github.com/neovim/neovim/pull/2198
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

" For Neovim > 0.1.5 and Vim > patch 7.4.1799 - https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
" Based on Vim patch 7.4.1770 (`guicolors` option) - https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
" https://github.com/neovim/neovim/wiki/Following-HEAD#20160511
if (has('termguicolors'))
  set termguicolors
endif

let g:material_theme_style = 'palenight'
let g:tokyonight_style = 'storm' " available: night, storm
let g:tokyonight_enable_italic = 1
colorscheme dracula
" lua require('github-theme').setup()
" set cursorline
" hi Normal guibg=NONE ctermbg=NONE
let g:python_highlight_all = 1

"""""""""""""""""""Plugin Config""""""""""""""""""

source ~/.config/nvim/config/nvim-lualine.lua
source ~/.config/nvim/config/nerdcommenter.vim
source ~/.config/nvim/config/nvim-tree.vim
source ~/.config/nvim/config/coc.vim
source ~/.config/nvim/config/fzf.vim
source ~/.config/nvim/config/gitsigns.lua
source ~/.config/nvim/config/treesitter.lua
source ~/.config/nvim/config/toggleterm.vim
source ~/.config/nvim/config/nvim-bufferline.lua
source ~/.config/nvim/config/indent-blankline.lua
source ~/.config/nvim/config/neoscroll.lua
source ~/.config/nvim/config/telescope.lua
